# Validation des scopes DHCP

| VLAN | Scope | Commande | Résultat |
|------|-------|----------|----------|
| 10 | 10.20.10.50-199 | `Get-DhcpServerv4Scope -ScopeId 10.20.10.0` | OK |
| 20 | 10.20.20.10-120 | idem | |
| 30 | 10.20.30.100-230 | idem | |
| 50 | 10.20.50.30-230 | idem | |
| 100 | 10.20.100.50-250 | idem | |
| 200 | 10.20.200.10-40 | idem | |
| 300 | 10.20.300.20-120 | idem | |

Noter toute réservation dans `docs/01-architecture/vlan-table.md`.
