#!/usr/bin/env bash
set -euo pipefail

SRC="/mnt/pool/data/"
DST="backup@10.20.10.60:/share/Backup/data/"
EXCLUDES=("--exclude=.zfs" "--exclude=*.tmp")

LOGFILE="/mnt/pool/logs/rsync-$(date +%Y%m%d).log"

echo "[INFO] Rsync started at $(date)" | tee -a "$LOGFILE"

rsync -avh --delete --stats "${EXCLUDES[@]}" -e ssh "$SRC" "$DST" | tee -a "$LOGFILE"

echo "[INFO] Rsync completed at $(date)" | tee -a "$LOGFILE"
