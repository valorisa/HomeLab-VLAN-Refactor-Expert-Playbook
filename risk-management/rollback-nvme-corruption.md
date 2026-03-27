# Rollback — Corruption NVMe

1. Arrêter TrueNAS.
2. Vérifier `zpool status`.
3. `zfs rollback pool/dataset@pre-change`.
4. Restaurer config TrueNAS (`config.db`) si nécessaire.
5. Remplacer NVMe si HS.
6. Documenter l'incident.

