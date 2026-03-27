# Registre des risques

| ID | Risque | Impact | Probabilité | Mitigation | Plan de secours |
|----|--------|--------|-------------|------------|-----------------|
| R1 | Perte d'accès FortiGate | Critique | Moyenne | Sauvegarde + console | rollback-fortinet.md |
| R2 | Boucle L2 lors du LAG | Majeur | Faible | Préconfig, shut automatique | Désactiver ports, revenir config |
| R3 | DHCP injoignable | Majeur | Moyenne | DHCP relay testé | Activer backup DHCP FortiGate |
| R4 | Sauvegarde corrompue | Majeur | Faible | Hash + test restore | Restaurer snapshot |
| R5 | PPSK compromis | Mineur | Faible | Rotation clés trimestrielle | Révoquer PPSK, re-provision |
| R6 | Panne alimentation | Critique | Faible | UPS + monitoring | Bascule alimentation secondaire |

