#!/usr/bin/env bash
set -euo pipefail

RCLONE="${RCLONE:-$HOME/.local/bin/rclone}"
REMOTE="${REMOTE:-yinjie}"
M2DGR_PID="${M2DGR_PID:-12549}"
LOCAL_DOOR01="/media/yinjie/M2DGR/adataset/M2DGR/sequences/door_01.bag"
REMOTE_DOOR01="M2DGR/sequences/door_01.bag"
LOG="/home/yinjie/Downloads/M2DGR/upload_priority.log"

rclone_direct() {
  env -u http_proxy -u https_proxy -u HTTP_PROXY -u HTTPS_PROXY -u all_proxy -u ALL_PROXY "$RCLONE" "$@"
}

log() { echo "[$(date '+%H:%M:%S')] $*" | tee -a "$LOG"; }

LOCAL_SIZE=$(stat -c%s "$LOCAL_DOOR01")
log "wait door_01 complete (local ${LOCAL_SIZE} bytes)"

while kill -0 "$M2DGR_PID" 2>/dev/null; do
  RS=$(rclone_direct lsl "${REMOTE}:${REMOTE_DOOR01}" 2>/dev/null | awk '{print $1}' || echo 0)
  if [[ "$RS" -gt 0 ]] && [[ $((LOCAL_SIZE - RS)) -lt 1048576 ]]; then
    log "door_01 done, stop M2DGR upload"
    kill "$M2DGR_PID" 2>/dev/null || true
    sleep 2
    break
  fi
  sleep 60
done

if pgrep -f "onedrive_upload_datasets.sh" >/dev/null; then
  log "GC/M2DGR-plus upload already running, wait..."
  while pgrep -f "onedrive_upload_datasets.sh" >/dev/null; do sleep 30; done
else
  log "start GC + M2DGR-plus upload"
  bash "$(dirname "$0")/onedrive_upload_datasets.sh" >> "$LOG" 2>&1
fi

while pgrep -f "rclone copyto.*Ground-Challenge|rclone copyto.*M2DGR-plus" >/dev/null; do
  sleep 30
done

log "update README links"
python3 "$(dirname "$0")/onedrive_update_links.py" >> "$LOG" 2>&1

log "done"
