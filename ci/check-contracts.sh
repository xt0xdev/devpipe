#!/usr/bin/env bash
set -euo pipefail
# Fail if a changed package/app is missing CONTRACT.md
base="${GITHUB_BASE_REF:-origin/main}"
if git rev-parse "$base" >/dev/null 2>&1; then
  ref="$base"
else
  ref="origin/main"
fi
changed=$(git diff --name-only "$ref"...HEAD || true)
need_check=0
while IFS= read -r f; do
  [[ -z "$f" ]] && continue
  if [[ "$f" == packages/* || "$f" == apps/* ]]; then
    root=$(echo "$f" | cut -d/ -f1-2)
    if [[ -d "$root" && ! -f "$root/CONTRACT.md" ]]; then
      echo "Missing CONTRACT.md in $root (changed file: $f)"
      need_check=1
    fi
  fi
done <<< "$changed"
exit "$need_check"
