#!/usr/bin/env bash
set -euo pipefail

RCLONE="${RCLONE:-$HOME/.local/bin/rclone}"
REMOTE="${REMOTE:-yinjie}"
REMOTE_BAG_DIR="${REMOTE_BAG_DIR:-M2DGR/sequences}"
LOCAL_BAG_DIR="${LOCAL_BAG_DIR:-/media/yinjie/M2DGR/adataset/M2DGR/sequences}"
LOCAL_GT_DIR="${LOCAL_GT_DIR:-/media/yinjie/M2DGR/adataset/M2DGR/GT}"
LINKS_ONLY="${LINKS_ONLY:-0}"
LINKS_JSON="${LINKS_JSON:-$(dirname "$0")/../onedrive_links.json}"
LINKS_MD="${LINKS_MD:-$(dirname "$0")/../onedrive_links.md}"
GT_REPO="${GT_REPO:-https://github.com/SJTU-ViSYS/M2DGR/blob/main/GT}"
TRANSFERS="${TRANSFERS:-1}"
CHECKERS="${CHECKERS:-4}"

rclone_direct() {
  env -u http_proxy -u https_proxy -u HTTP_PROXY -u HTTPS_PROXY -u all_proxy -u ALL_PROXY \
    "$RCLONE" "$@"
}

declare -A README_NAME=(
  [rotation_01]=Circle_01
  [rotation_02]=Circle_02
  [street_10]=street_010
)

die() { echo "ERROR: $*" >&2; exit 1; }

[[ -x "$RCLONE" || -n "$(command -v rclone)" ]] || die "rclone not found. Install to ~/.local/bin/rclone"
command -v rclone >/dev/null && RCLONE=rclone
[[ -d "$LOCAL_BAG_DIR" ]] || die "bag dir not found: $LOCAL_BAG_DIR (mount disk first)"

rclone_direct listremotes | grep -qx "${REMOTE}:" || die "remote '${REMOTE}:' not configured. Run: bash scripts/onedrive_setup.sh"

if [[ "$LINKS_ONLY" != "1" ]]; then
  echo "==> upload bags (direct, no proxy) -> ${REMOTE}:${REMOTE_BAG_DIR}"
  rclone_direct copy "$LOCAL_BAG_DIR" "${REMOTE}:${REMOTE_BAG_DIR}" \
    --include "*.bag" \
    --progress \
    --transfers "$TRANSFERS" \
    --checkers "$CHECKERS" \
    --retries 10 \
    --low-level-retries 10 \
    --onedrive-chunk-size 100M \
    --stats 30s \
    --stats-one-line
fi

echo "==> generate share links"
python3 - "$RCLONE" "$REMOTE" "$REMOTE_BAG_DIR" "$LOCAL_BAG_DIR" "$LOCAL_GT_DIR" "$GT_REPO" "$LINKS_JSON" "$LINKS_MD" <<'PY'
import json, os, subprocess, sys
from pathlib import Path

rclone, remote, bag_dir, local_bag, local_gt, gt_repo, out_json, out_md = sys.argv[1:9]
readme = {
    "rotation_01": "Circle_01",
    "rotation_02": "Circle_02",
    "street_10": "street_010",
}

def link(path):
    env = os.environ.copy()
    for k in list(env):
        if k.lower().endswith("proxy"):
            env.pop(k, None)
    p = subprocess.run(
        [rclone, "link", f"{remote}:{path}"],
        capture_output=True, text=True, env=env,
    )
    if p.returncode != 0:
        raise RuntimeError(p.stderr.strip() or p.stdout.strip())
    return p.stdout.strip()

rows = []
for bag in sorted(Path(local_bag).glob("*.bag")):
    stem = bag.stem
    readme_name = readme.get(stem, stem)
    bag_remote = f"{bag_dir}/{bag.name}"
    gt_name = f"{stem}.txt"
    gt_local = Path(local_gt) / gt_name
    print(f"link {bag.name} ...", flush=True)
    rows.append({
        "readme_name": readme_name,
        "local_name": stem,
        "bag_file": bag.name,
        "bag_remote": bag_remote,
        "rosbag_url": link(bag_remote),
        "gt_file": gt_name if gt_local.exists() else None,
        "gt_url": f"{gt_repo}/{gt_name}" if gt_local.exists() else None,
    })

Path(out_json).write_text(json.dumps(rows, indent=2, ensure_ascii=False) + "\n")

lines = [
    "# M2DGR 下载链接",
    "",
    f"- Rosbag (OneDrive): `{remote}:{bag_dir}`",
    f"- GT (GitHub): `{gt_repo}/`",
    "",
    "| README 名 | 本地名 | Rosbag | GT |",
    "|---|---|---|---|",
]
for r in rows:
    gt = f"[GT]({r['gt_url']})" if r.get("gt_url") else "-"
    lines.append(f"| {r['readme_name']} | `{r['local_name']}` | [Rosbag]({r['rosbag_url']}) | {gt} |")
Path(out_md).write_text("\n".join(lines) + "\n")
print(f"saved {out_json}")
print(f"saved {out_md}")
PY

echo "done"
