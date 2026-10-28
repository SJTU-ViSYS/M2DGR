#!/usr/bin/env bash
set -euo pipefail

RCLONE="${RCLONE:-$HOME/.local/bin/rclone}"
REMOTE="${REMOTE:-yinjie}"
command -v rclone >/dev/null && RCLONE=rclone

rclone_direct() {
  env -u http_proxy -u https_proxy -u HTTP_PROXY -u HTTPS_PROXY -u all_proxy -u ALL_PROXY \
    "$RCLONE" "$@"
}

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
LINKS_JSON="${SCRIPT_DIR}/../dataset_onedrive_links.json"
LOG="${SCRIPT_DIR}/../upload_extra.log"

exec > >(tee -a "$LOG") 2>&1
echo "==> start $(date)"

python3 <<'PY'
import json, os, re, subprocess, sys
from pathlib import Path

RCLONE = os.environ.get("RCLONE", str(Path.home() / ".local/bin/rclone"))
if subprocess.run(["bash","-lc","command -v rclone"], capture_output=True).returncode == 0:
    RCLONE = "rclone"
REMOTE = os.environ.get("REMOTE", "yinjie")

def rclone(*args):
    env = os.environ.copy()
    for k in list(env):
        if k.lower().endswith("proxy"):
            env.pop(k, None)
    p = subprocess.run([RCLONE, *args], capture_output=True, text=True, env=env)
    if p.returncode != 0:
        raise RuntimeError(p.stderr.strip() or p.stdout.strip())
    return p.stdout.strip()

def remote_sizes(prefix):
    try:
        out = rclone("lsl", f"{REMOTE}:{prefix}")
        sizes = {}
        for line in out.splitlines():
            parts = line.split()
            if len(parts) >= 4:
                sizes[parts[-1]] = int(parts[0])
        return sizes
    except Exception:
        return {}

def is_complete(local, sizes, bag_name):
    if bag_name not in sizes:
        return False
    rs = sizes[bag_name]
    return rs > 0 and abs(rs - local.stat().st_size) < 1024 * 1024

def link(remote_path):
    return rclone("link", f"{REMOTE}:{remote_path}")

def upload(local, remote_path):
    rclone("copyto", str(local), f"{REMOTE}:{remote_path}",
           "--retries", "10", "--low-level-retries", "10", "--onedrive-chunk-size", "100M")

DATASETS = [
    {
        "id": "M2DGR-plus",
        "remote_dir": "M2DGR-plus",
        "local_dir": Path("/media/yinjie/YJ06/gfdata/aoutdoor/bags"),
        "readme": Path("/home/yinjie/Downloads/M2DGR-plus/README.md"),
        "map": {
            "Anomaly": "anomaly.bag",
            "Switch": "switch2.bag",
            "Tree": "tree3.bag",
            "Bridge_01": "bridge1.bag",
            "Bridge_02": "bridge2.bag",
            "Street_01": "street1.bag",
            "Street_02": "street2.bag",
            "Parking_01": "parking1.bag",
            "Parking_02": "parking2.bag",
            "Building_01": "building1.bag",
            "Building_02": "building2.bag",
        },
    },
    {
        "id": "Ground-Challenge",
        "remote_dir": "Ground-Challenge",
        "local_dir": Path("/media/yinjie/YJ06/ground-challenge/bag"),
        "readme": Path("/home/yinjie/Downloads/Ground-Challenge/README.md"),
        "map": None,
    },
]

all_links = {}
upload_queue = []

for ds in DATASETS:
    sizes = remote_sizes(ds["remote_dir"])
    if ds["map"] is None:
        ds["map"] = {}
        for bag in sorted(ds["local_dir"].glob("*.bag")):
            name = bag.stem
            readme_name = name[0].upper() + name[1:] if name else name
            ds["map"][readme_name] = bag.name

    items = []
    for readme_name, bag_name in ds["map"].items():
        local = ds["local_dir"] / bag_name
        remote_path = f"{ds['remote_dir']}/{bag_name}"
        if not local.exists():
            print(f"SKIP missing local: {local}")
            continue
        size = local.stat().st_size
        complete = is_complete(local, sizes, bag_name)
        items.append({
            "dataset": ds["id"],
            "readme_name": readme_name,
            "bag_name": bag_name,
            "local": str(local),
            "remote_path": remote_path,
            "size": size,
            "on_remote": complete,
        })
        if not complete:
            upload_queue.append(items[-1])

    all_links[ds["id"]] = items

upload_queue.sort(key=lambda x: x["size"])
print(f"upload queue: {len(upload_queue)} files")
for item in upload_queue:
    gb = item["size"] / 1024**3
    print(f"  upload {item['bag_name']} ({gb:.2f} GB) -> {item['remote_path']}")
    upload(item["local"], item["remote_path"])
    item["on_remote"] = True

print("upload done, updating links...", flush=True)
PY

python3 "${SCRIPT_DIR}/onedrive_update_links.py"
echo "done"

echo "==> end $(date)"
