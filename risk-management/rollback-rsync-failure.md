# Rollback — Échec Rsync

1. Lire `/mnt/pool/logs/rsync.log`.
2. Relancer avec `--dry-run` pour identifier les fichiers bloquants.
3. Supprimer les fichiers partiellement copiés sur QNAP.
4. Relancer avec `rsync -av --partial`.
5. Noter l'incident et ajuster la fenêtre si nécessaire.
