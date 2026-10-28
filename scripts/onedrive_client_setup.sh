#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
CONF_DIR="${HOME}/.config/onedrive"
SYNC_ROOT="${HOME}/OneDrive"
BAG_DIR="${BAG_DIR:-/media/yinjie/M2DGR/adataset/M2DGR/sequences}"
LOG="${SCRIPT_DIR}/../upload_onedrive_client.log"

command -v onedrive >/dev/null || { echo "onedrive not in PATH"; exit 1; }

mkdir -p "${CONF_DIR}" "${SYNC_ROOT}/M2DGR"
ln -sfn "${BAG_DIR}" "${SYNC_ROOT}/M2DGR/sequences"

cat > "${CONF_DIR}/config" <<EOF
sync_dir = "${SYNC_ROOT}"
upload_only = "true"
no_remote_delete = "true"
download_only = "false"
monitor_interval = "300"
skip_symlinks = "true"
skip_dotfiles = "true"
skip_dir = "Ground-Challenge|M2DGR-plus"
EOF

cat > "${CONF_DIR}/sync_list" <<EOF
/M2DGR/sequences
EOF

echo "sync_dir=${SYNC_ROOT}"
echo "bags=${BAG_DIR}"
onedrive --display-config 2>&1 | head -20 || true
