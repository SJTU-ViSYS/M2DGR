#!/usr/bin/env python3
import json, os, re, subprocess, sys
from pathlib import Path

RCLONE = os.environ.get("RCLONE", str(Path.home() / ".local/bin/rclone"))
REMOTE = os.environ.get("REMOTE", "yinjie")
REMOTE_DIR = os.environ.get("REMOTE_BAG_DIR", "M2DGR/sequences")
LOCAL_BAG_DIR = Path(os.environ.get("LOCAL_BAG_DIR", "/media/yinjie/M2DGR/adataset/M2DGR/sequences"))
README = Path(os.environ.get("M2DGR_README", "/home/yinjie/Downloads/M2DGR/README.md"))
LINKS_JSON = Path(os.environ.get("LINKS_JSON", "/home/yinjie/Downloads/M2DGR/onedrive_links.json"))
GT_REPO = os.environ.get("GT_REPO", "https://github.com/SJTU-ViSYS/M2DGR/tree/main/GT")

STEM_TO_README = {
    "rotation_01": "Circle_01",
    "rotation_02": "Circle_02",
    "street_10": "street_010",
}


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
    out = rclone("lsl", f"{REMOTE}:{REMOTE_DIR}")
    sizes = {}
    for line in out.splitlines():
        parts = line.split()
        if len(parts) >= 4:
            sizes[parts[-1]] = int(parts[0])
    return sizes


def is_complete(local_path, sizes):
    name = local_path.name
    if name not in sizes:
        return False
    rs = sizes[name]
    ls = local_path.stat().st_size
    return rs > 0 and abs(rs - ls) < 1024 * 1024


def readme_name(stem):
    return STEM_TO_README.get(stem, stem)


def make_link(remote_path):
    return rclone("link", f"{REMOTE}:{remote_path}")


DIR_MARKER = "**OneDrive folder:**"
GT_MARKER = "**GT (GitHub):**"


def ensure_dir_links(readme, bag_dir_url, gt_url):
    text = readme.read_text()
    block = (
        f"> {DIR_MARKER} [Browse all rosbags]({bag_dir_url}) | "
        f"{GT_MARKER} [Download GT]({gt_url})\n"
        ">\n"
        "> Individual download links below point to specific `.bag` files.\n"
    )
    anchor = "**We make public ALL THE SEQUENCES with their GT now.**"
    if DIR_MARKER in text:
        new = re.sub(
            rf"> {re.escape(DIR_MARKER)}[^\n]*\n(?:>[^\n]*\n)*",
            block,
            text,
            count=1,
        )
    elif anchor in text:
        new = text.replace(anchor + "\n", anchor + "\n\n" + block + "\n", 1)
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


def update_rosbag_link(readme, name, url):
    text = readme.read_text()
    rosbag = f"[Rosbag]({url})"
    patterns = [
        rf"({re.escape(name)}\|(?:[^\n|]*\|){{4}})\*Uploading[^|]*(\|\[GT\])",
        rf"({re.escape(name)}\|[^\n|]*\|[^\n|]*\|[^\n|]*\|[^\n|]*\|\[Rosbag\]\()https?://[^)]+(\))",
        rf"({re.escape(name)}\|[^\n|]*\|[^\n|]*\|[^\n|]*\|\[Rosbag\]\()https?://[^)]+(\))",
    ]
    repls = [rf"\1{rosbag}\2", rf"\1{url}\2", rf"\1{url}\2"]
    for pat, repl in zip(patterns, repls):
        new = re.sub(pat, repl, text)
        if new != text:
            readme.write_text(new)
            text = new
            return True
    return False


def load_rows():
    if LINKS_JSON.exists():
        return json.loads(LINKS_JSON.read_text())
    return []


def save_rows(rows):
    LINKS_JSON.write_text(json.dumps(rows, indent=2, ensure_ascii=False) + "\n")


def upsert_row(rows, entry):
    for i, row in enumerate(rows):
        if row.get("bag_file") == entry["bag_file"]:
            rows[i] = entry
            return
    rows.append(entry)


def process_bags(bag_names=None):
    sizes = remote_sizes()
    rows = load_rows()
    updated = []
    bag_dir_url = make_link(REMOTE_DIR)
    gt_url = GT_REPO
    if ensure_dir_links(README, bag_dir_url, gt_url):
        updated.append("dir")
        print("updated README dir + GT links", flush=True)
    targets = []
    for bag in sorted(LOCAL_BAG_DIR.glob("*.bag")):
        if bag_names and bag.name not in bag_names:
            continue
        if not is_complete(bag, sizes):
            continue
        targets.append(bag)

    for bag in targets:
        stem = bag.stem
        name = readme_name(stem)
        remote_path = f"{REMOTE_DIR}/{bag.name}"
        print(f"link {remote_path}", flush=True)
        url = make_link(remote_path)
        gt_file = f"{stem}.txt"
        gt_local = Path("/home/yinjie/Downloads/M2DGR/GT") / gt_file
        entry = {
            "readme_name": name,
            "local_name": stem,
            "bag_file": bag.name,
            "bag_remote": remote_path,
            "rosbag_url": url,
            "gt_file": gt_file if gt_local.exists() else None,
            "gt_url": f"{GT_REPO}/{gt_file}" if gt_local.exists() else None,
        }
        upsert_row(rows, entry)
        if update_rosbag_link(README, name, url):
            updated.append(name)
            print(f"  updated README {name}", flush=True)

    save_rows(rows)
    print(f"updated {len(updated)} README rosbag links", flush=True)
    return updated


def main():
    names = sys.argv[1:] if len(sys.argv) > 1 else None
    process_bags(names)


if __name__ == "__main__":
    main()
