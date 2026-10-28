#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
REPO_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"
UPLOAD_SCRIPT="$SCRIPT_DIR/onedrive_upload_m2dgr.sh"
LOG="$REPO_DIR/upload_watchdog.log"
LOCAL_BAG_DIR="${LOCAL_BAG_DIR:-/media/yinjie/M2DGR/adataset/M2DGR/sequences}"
CRON_LINE="0 */3 * * * $SCRIPT_DIR/onedrive_upload_watchdog.sh >> $LOG 2>&1"

log() { echo "[$(date '+%Y-%m-%d %H:%M:%S')] $*"; }

is_uploading() {
  pgrep -f "onedrive_upload_m2dgr.sh" >/dev/null 2>&1 && return 0
  pgrep -f "rclone copyto.*M2DGR/sequences" >/dev/null 2>&1 && return 0
  return 1
}

pending_count() {
  LOCAL_BAG_DIR="$LOCAL_BAG_DIR" python3 <<'PY'
import os, subprocess
from pathlib import Path

RCLONE = "rclone" if subprocess.run(["bash","-lc","command -v rclone"], capture_output=True).returncode == 0 else str(Path.home()/".local/bin/rclone")
REMOTE = os.environ.get("REMOTE", "yinjie")
REMOTE_DIR = os.environ.get("REMOTE_BAG_DIR", "M2DGR/sequences")
LOCAL_DIR = Path(os.environ["LOCAL_BAG_DIR"])

def rclone(*args):
    env = os.environ.copy()
    for k in list(env):
        if k.lower().endswith("proxy"):
            env.pop(k, None)
    p = subprocess.run([RCLONE, *args], capture_output=True, text=True, env=env)
    if p.returncode != 0:
        return {}
    return p.stdout

def remote_sizes():
    out = rclone("lsl", f"{REMOTE}:{REMOTE_DIR}")
    if isinstance(out, dict):
        return {}
    sizes = {}
    for line in out.splitlines():
        parts = line.split()
        if len(parts) >= 4:
            sizes[parts[-1]] = int(parts[0])
    return sizes

sizes = remote_sizes()
pending = 0
for bag in LOCAL_DIR.glob("*.bag"):
    rs = sizes.get(bag.name, 0)
    ls = bag.stat().st_size
    if rs <= 0 or abs(rs - ls) >= 1024 * 1024:
        pending += 1
print(pending)
PY
}

install_cron() {
  mkdir -p "$(dirname "$LOG")"
  tmp="$(mktemp)"
  crontab -l 2>/dev/null | grep -Fv "onedrive_upload_watchdog.sh" >"$tmp" || true
  echo "$CRON_LINE" >>"$tmp"
  crontab "$tmp"
  rm -f "$tmp"
  log "cron installed: $CRON_LINE"
}

run_check() {
  mkdir -p "$(dirname "$LOG")"
  if is_uploading; then
    log "upload running, ok"
    exit 0
  fi
  if [[ ! -d "$LOCAL_BAG_DIR" ]]; then
    log "skip: local bag dir missing ($LOCAL_BAG_DIR)"
    exit 0
  fi
  pending="$(pending_count)"
  if [[ "$pending" -eq 0 ]]; then
    log "all bags complete, nothing to do"
    exit 0
  fi
  log "upload stopped, pending=$pending, restarting"
  nohup bash "$UPLOAD_SCRIPT" >>"$REPO_DIR/upload_m2dgr.log" 2>&1 &
  sleep 2
  if is_uploading; then
    log "restart ok (pid $(pgrep -f 'onedrive_upload_m2dgr.sh' | head -1))"
  else
    log "restart failed"
    exit 1
  fi
}

case "${1:-run}" in
  install-cron) install_cron ;;
  run) run_check ;;
  *) echo "usage: $0 [run|install-cron]" >&2; exit 2 ;;
esac
