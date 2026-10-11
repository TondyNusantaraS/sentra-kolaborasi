#!/usr/bin/env bash
set -euo pipefail
ROOT="$(git rev-parse --show-toplevel)"
cp "$ROOT/hooks/pre-commit.sh" "$ROOT/.git/hooks/pre-commit"
chmod +x "$ROOT/.git/hooks/pre-commit"
echo "Hook pre-commit terpasang di $ROOT/.git/hooks/pre-commit"
