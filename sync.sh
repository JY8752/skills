#!/usr/bin/env bash
set -euo pipefail

SRC="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
DST="$HOME/.agents/skills"

mkdir -p "$DST"

# このrepoが作ったsymlinkのうち、元Skillが削除済みのものだけ掃除する
for link in "$DST"/*; do
  [[ -L "$link" ]] || continue

  target="$(readlink "$link")"

  if [[ "$target" == "$SRC/"* && ! -e "$target" ]]; then
    echo "remove: $(basename "$link")"
    rm "$link"
  fi
done

# SKILL.mdを持つ直下ディレクトリだけリンクする
for skill in "$SRC"/*; do
  [[ -d "$skill" ]] || continue
  [[ -f "$skill/SKILL.md" ]] || continue

  name="$(basename "$skill")"
  dest="$DST/$name"

  if [[ -L "$dest" && "$(readlink "$dest")" == "$skill" ]]; then
    continue
  fi

  if [[ -e "$dest" || -L "$dest" ]]; then
    echo "conflict: $dest already exists" >&2
    exit 1
  fi

  echo "link: $name"
  ln -s "$skill" "$dest"
done

echo "Skills synced."
