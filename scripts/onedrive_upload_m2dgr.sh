#!/usr/bin/env bash
set -euo pipefail

RCLONE="${RCLONE:-$HOME/.local/bin/rclone}"
REMOTE="${REMOTE:-yinjie}"
REMOTE_BAG_DIR="${REMOTE_BAG_DIR:-M2DGR/sequences}"
LOCAL_BAG_DIR="${LOCAL_BAG_DIR:-/media/yinjie/M2DGR/adataset/M2DGR/sequences}"
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
LOG="${SCRIPT_DIR}/../upload_m2dgr.log"

command -v rclone >/dev/null && RCLONE=rclone

exec > >(tee -a "$LOG") 2>&1
echo "==> M2DGR upload start $(date)"

echo "wait GC + M2DGR-plus upload..."
while pgrep -f "onedrive_upload_datasets.sh" >/dev/null 2>&1; do sleep 30; done
while pgrep -f "rclone copyto.*Ground-Challenge|rclone copyto.*M2DGR-plus" >/dev/null 2>&1; do sleep 30; done
echo "GC + M2DGR-plus done, start M2DGR $(date)"

[[ -d "$LOCAL_BAG_DIR" ]] || { echo "ERROR: bag dir not found: $LOCAL_BAG_DIR"; exit 1; }

export RCLONE REMOTE REMOTE_BAG_DIR LOCAL_BAG_DIR SCRIPT_DIR
python3 <<'PY'
import os, subprocess, sys
from pathlib import Path

RCLONE = os.environ["RCLONE"]
REMOTE = os.environ["REMOTE"]
REMOTE_DIR = os.environ["REMOTE_BAG_DIR"]
LOCAL_DIR = Path(os.environ["LOCAL_BAG_DIR"])
SCRIPT_DIR = Path(os.environ["SCRIPT_DIR"])

def rclone(*args):
    env = os.environ.copy()
    for k in list(env):
        if k.lower().endswith("proxy"):
            env.pop(k, None)
    p = subprocess.run([RCLONE, *args], capture_output=True, text=True, env=env)
    if p.returncode != 0:
        raise RuntimeError(p.stderr.strip() or p.stdout.strip())
    return p.stdout.strip()

def remote_sizes():
    try:
        out = rclone("lsl", f"{REMOTE}:{REMOTE_DIR}")
    except Exception:
        return {}
    sizes = {}
    for line in out.splitlines():
        parts = line.split()
        if len(parts) >= 4:
            sizes[parts[-1]] = int(parts[0])
    return sizes

def is_complete(local, sizes):
    name = local.name
    if name not in sizes:
        return False
    rs = sizes[name]
    ls = local.stat().st_size
    return rs > 0 and abs(rs - ls) < 1024 * 1024

def upload(local, remote_path):
    rclone("copyto", str(local), f"{REMOTE}:{remote_path}",
           "--retries", "10", "--low-level-retries", "10", "--onedrive-chunk-size", "100M")

def update_links(bag_name):
    subprocess.run(
        [sys.executable, str(SCRIPT_DIR / "onedrive_update_m2dgr_links.py"), bag_name],
        check=True,
    )

bags = list(LOCAL_DIR.glob("*.bag"))
queue = sorted(bags, key=lambda p: p.stat().st_size)

sizes = remote_sizes()
pending = [p for p in queue if not is_complete(p, sizes)]
print(f"M2DGR upload queue: {len(pending)}/{len(queue)} files")
for p in pending:
    print(f"  {p.name} ({p.stat().st_size / 1024**3:.2f} GB)")

for p in pending:
    remote_path = f"{REMOTE_DIR}/{p.name}"
    print(f"upload {p.name} -> {remote_path}", flush=True)
    upload(p, remote_path)
    sizes = remote_sizes()
    if not is_complete(p, sizes):
        raise RuntimeError(f"upload incomplete: {p.name}")
    update_links(p.name)

print("all M2DGR uploads done", flush=True)
PY

python3 "${SCRIPT_DIR}/onedrive_update_m2dgr_links.py"
echo "==> M2DGR upload end $(date)"
