#!/usr/bin/env bash
set -euo pipefail
status=0
while IFS= read -r f; do
  if [[ "$f" == *.sh ]] && ! shellcheck "$f"; then
    echo "GAGAL shellcheck: $f"
    status=1
  fi
  if grep -E '^(<<<<<<<|>>>>>>>)' "$f" >/dev/null; then
    echo "GAGAL: penanda konflik di $f"
    status=1
  fi
done < <(git diff --cached --name-only --diff-filter=ACM)
exit "$status"
