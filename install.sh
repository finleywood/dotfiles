#!/usr/bin/env bash

set -euo pipefail

for file in .[^.]* .??*; do
  # Skip if no matches
  [[ -e "$file" ]] || continue

  # Ignore .git explicitly
  [[ "$file" == ".git" ]] && continue


  target="$HOME/$file"
  source="$(pwd)/$file"

  if [[ -e "$target" || -L "$target" ]]; then
    read -rp "Overwrite $target? [y/N] " reply
    case "$reply" in
      [yY]|[yY][eE][sS])
        rm -rf "$target"
        ;;
      *)
        echo "Skipping $file"
        continue
        ;;
    esac
  fi

  ln -s "$source" "$target"
  echo "Linked $file → $target"
done
