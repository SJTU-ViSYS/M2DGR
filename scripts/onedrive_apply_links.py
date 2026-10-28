#!/usr/bin/env python3
import json, re
from pathlib import Path

LINKS = Path("/home/yinjie/Downloads/M2DGR/dataset_onedrive_links.json")
READMES = {
    "M2DGR-plus": Path("/home/yinjie/Downloads/M2DGR-plus/README.md"),
    "Ground-Challenge": Path("/home/yinjie/Downloads/Ground-Challenge/README.md"),
}

def update_readme(readme, name, url):
    text = readme.read_text()
    patterns = [
        rf'({re.escape(name)}\|[^\n|]*\|[^\n|]*\|[^\n|]*\|[^\n|]*\|\[Rosbag\]\()https?://[^)]+(\))',
        rf'({re.escape(name)}\|[^\n|]*\|[^\n|]*\|[^\n|]*\|\[Rosbag\]\()https?://[^)]+(\))',
    ]
    for pat in patterns:
        new = re.sub(pat, rf'\1{url}\2', text)
        if new != text:
            readme.write_text(new)
            return True
    return False

data = json.loads(LINKS.read_text())
n = 0
for ds, items in data.items():
    readme = READMES[ds]
    for item in items:
        if "url" not in item:
            continue
        if update_readme(readme, item["readme_name"], item["url"]):
            print(f"updated {ds} {item['readme_name']}")
            n += 1
print(f"total {n}")
