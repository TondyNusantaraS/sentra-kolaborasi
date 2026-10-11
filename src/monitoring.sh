#!/usr/bin/env bash
set -euo pipefail
export SENTRA_ENV=dev
INTERVAL="${1:-10}"
URL="${2:-http://127.0.0.1:5000/health}"
if ! [[ "$INTERVAL" =~ ^[0-9]+$ ]] || [ "$INTERVAL" -lt 1 ]; then
 echo "Interval harus berupa angka positif" >&2; exit 1
fi
echo "Memantau setiap $INTERVAL detik. Tekan Ctrl+C untuk berhenti."
while true; do
 if curl -fsS --max-time 5 "$URL" >/dev/null; then
 echo "$(date +%T) UP"
 else
 echo "$(date +%T) DOWN"
 fi
 sleep "$INTERVAL"
done
