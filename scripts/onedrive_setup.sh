#!/usr/bin/env bash
set -euo pipefail

RCLONE="${RCLONE:-$HOME/.local/bin/rclone}"
command -v rclone >/dev/null && RCLONE=rclone

echo "Configure OneDrive remote named 'onedrive'."
echo "Steps in rclone config:"
echo "  n) New remote"
echo "  name) onedrive"
echo "  Storage) onedrive"
echo "  client_id) [Enter default]"
echo "  client_secret) [Enter default]"
echo "  region) global (personal) or cn (China) or microsoft (business)"
echo "  Edit advanced config) n"
echo "  Use auto config) y  (opens browser login)"
echo ""
read -r -p "Press Enter to start rclone config..."
"$RCLONE" config

echo ""
echo "Test:"
"$RCLONE" lsd onedrive: | head
