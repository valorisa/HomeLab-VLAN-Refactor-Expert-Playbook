# Phase 03 — Validation

| Test | Commande | Résultat |
|------|----------|----------|
| LACP | `show lacp neighbor` | Ports bundle. |
| VLAN natif | `show interface trunk` | VLAN 999 natif. |
| DHCP relay | `Get-DhcpServerv4Scope` | Baux actifs. |
| Inter-VLAN | `Test-NetConnection` | Autorisé selon policy. |
| Isolation invités | `traceroute` depuis VLAN100 | S'arrête au FortiGate. |
