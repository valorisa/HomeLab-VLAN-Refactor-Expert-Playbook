# Phase 01 — Validation

| # | Test | Commande / Action | Résultat |
|---|------|-------------------|----------|
| 1 | Sauvegarde FortiGate | `execute backup config flash` | Fichier horodaté. |
| 2 | Sauvegarde Cisco | `show archive` | Backup > 5 Ko. |
| 3 | Backup UniFi | Téléchargement UI | Zip testée en import. |
| 4 | Snapshots Proxmox | UI Proxmox | Statut OK. |
| 5 | Accès console | Putty / screen | Prompt CLI visible. |
| 6 | Scripts prêts | `ls scripts` | Présents + exécutables. |
