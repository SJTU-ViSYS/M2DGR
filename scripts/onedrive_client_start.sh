#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
LOG="${SCRIPT_DIR}/../upload_onedrive_client.log"
mkdir -p /home/yinjie/Downloads/M2DGR/onedrive_client_logs

bash "${SCRIPT_DIR}/onedrive_client_setup.sh" >>"$LOG" 2>&1

exec >>"$LOG" 2>&1
echo "==> onedrive client start $(date)"
onedrive --monitor --verbose
