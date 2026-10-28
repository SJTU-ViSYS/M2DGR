#!/usr/bin/env python3
import json, os, re, subprocess, sys
from pathlib import Path

RCLONE = os.environ.get("RCLONE", str(Path.home() / ".local/bin/rclone"))
if not Path(RCLONE).exists():
    RCLONE = "rclone"
REMOTE = os.environ.get("REMOTE", "yinjie")

M2DGR_PLUS_MAP = {
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
}

DATASETS = [
    {
        "id": "M2DGR-plus",
        "remote_dir": "M2DGR-plus",
        "local_dir": Path("/media/yinjie/YJ06/gfdata/aoutdoor/bags"),
        "readme": Path("/home/yinjie/Downloads/M2DGR-plus/README.md"),
        "map": M2DGR_PLUS_MAP,
    },
    {
        "id": "Ground-Challenge",
        "remote_dir": "Ground-Challenge",
        "local_dir": Path("/media/yinjie/YJ06/ground-challenge/bag"),
        "readme": Path("/home/yinjie/Downloads/Ground-Challenge/README.md"),
        "map": None,
    },
]


def rclone(*args):
    env = os.environ.copy()
    for k in list(env):
        if k.lower().endswith("proxy"):
            env.pop(k, None)
    last = ""
    for i in range(5):
        p = subprocess.run([RCLONE, *args], capture_output=True, text=True, env=env)
        if p.returncode == 0:
            return p.stdout.strip()
        last = p.stderr.strip() or p.stdout.strip()
        import time
        time.sleep(3 * (i + 1))
    raise RuntimeError(last)


def remote_sizes(remote_dir):
    out = rclone("lsl", f"{REMOTE}:{remote_dir}")
    sizes = {}
    for line in out.splitlines():
        parts = line.split()
        if len(parts) >= 4:
            sizes[parts[-1]] = int(parts[0])
    return sizes


def is_complete(local_path, remote_sizes_map):
    name = local_path.name
    if name not in remote_sizes_map:
        return False
    rs = remote_sizes_map[name]
    return rs > 0 and abs(rs - local_path.stat().st_size) < 1024 * 1024


def make_link(remote_path):
    return rclone("link", f"{REMOTE}:{remote_path}")


DIR_MARKER = "**OneDrive folder:**"


def ensure_dir_link(readme, url):
    text = readme.read_text()
    block = (
        f"> {DIR_MARKER} [Browse all rosbags]({url})\n"
        ">\n"
        "> Individual download links below point to specific `.bag` files.\n"
    )
    if DIR_MARKER in text:
        new = re.sub(
            rf"> {re.escape(DIR_MARKER)} \[.*?\]\([^)]+\)[^\n]*\n(?:>[^\n]*\n)*",
            block,
            text,
            count=1,
        )
    else:
        new = re.sub(
            r"(## \d+\.DATASET SEQUENCES\n\n)",
            r"\1" + block + "\n",
            text,
            count=1,
        )
    if new != text:
        readme.write_text(new)
        return True
    return False


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


def build_gc_map(local_dir):
    m = {}
    for bag in sorted(local_dir.glob("*.bag")):
        m[bag.stem[0].upper() + bag.stem[1:]] = bag.name
    return m


def make_dir_link(remote_dir):
    return rclone("link", f"{REMOTE}:{remote_dir}")


def main():
    all_links = {}
    updated = []
    for ds in DATASETS:
        mp = ds["map"] or build_gc_map(ds["local_dir"])
        sizes = remote_sizes(ds["remote_dir"])
        print(f"dir link {ds['remote_dir']}")
        dir_url = make_dir_link(ds["remote_dir"])
        if ensure_dir_link(ds["readme"], dir_url):
            updated.append(f"{ds['id']}:dir")
            print(f"  updated README dir link")
        items = []
        for readme_name, bag_name in mp.items():
            local = ds["local_dir"] / bag_name
            remote_path = f"{ds['remote_dir']}/{bag_name}"
            if not local.exists():
                continue
            entry = {"readme_name": readme_name, "bag_name": bag_name, "remote_path": remote_path}
            if is_complete(local, sizes):
                print(f"link {remote_path}")
                entry["url"] = make_link(remote_path)
                if update_readme(ds["readme"], readme_name, entry["url"]):
                    updated.append(f"{ds['id']}:{readme_name}")
                    print(f"  updated README {readme_name}")
            else:
                print(f"skip incomplete {bag_name}")
            items.append(entry)
        all_links[ds["id"]] = items
        all_links.setdefault("_dirs", {})[ds["id"]] = dir_url

    out = Path("/home/yinjie/Downloads/M2DGR/dataset_onedrive_links.json")
    out.write_text(json.dumps(all_links, indent=2, ensure_ascii=False) + "\n")
    print(f"updated {len(updated)} README links")
    for u in updated:
        print(f"  {u}")


if __name__ == "__main__":
    main()
