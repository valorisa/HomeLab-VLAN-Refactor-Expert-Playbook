# DHCP Scopes — Windows Server 2022

| VLAN | Scope | Options |
|------|-------|---------|
| 10 | 10.20.10.50-199 | 003=10.20.10.254, 006=10.20.10.10, 015=lab.local |
| 20 | 10.20.20.10-120 | Idem, DNS restreint |
| 30 | 10.20.30.100-230 | DNS filtré, Option 119 si besoin |
| 50 | 10.20.50.30-230 | Standard |
| 100 | 10.20.100.50-250 | DNS public |
| 200 | 10.20.200.10-40 | Réservations AP |
| 300 | 10.20.300.20-120 | Réservations caméras |

### Étapes
1. Ajouter le rôle DHCP.
2. Autoriser le serveur dans AD (`Add-DhcpServerInDC`).
3. Créer les scopes via script PowerShell (voir `/scripts/powershell/dhcp-scopes-bootstrap.ps1`).
4. Configurer les options globales (DNS, WINS si nécessaire).
