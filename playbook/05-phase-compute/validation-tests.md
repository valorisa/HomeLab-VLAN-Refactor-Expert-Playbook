# Phase 05 — Validation

| Test | Commande | Résultat |
|------|----------|----------|
| AD health | `dcdiag /v` | 0 erreur. |
| DNS | `Resolve-DnsName fortigate.lab.local` | IP correcte. |
| DHCP | `Get-DhcpServerv4Lease` | Baux présents. |
| Proxmox backup | Vérifier tâche | Statut OK. |
