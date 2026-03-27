# Modèle de rapport iPerf3

| Date | Source | Destination | Paramètres | Résultat |
|------|--------|-------------|------------|----------|
| AAAA-MM-JJ | TrueNAS | Workstation | `iperf3 -c workstation -P 4 -t 30` | 9.2 Gb/s |
| AAAA-MM-JJ | Proxmox | QNAP | `iperf3 -c qnap -R -P 4 -t 30` | 8.1 Gb/s |

## Notes
- Lancer un test aller et retour.
- Préciser si MTU 9000 activé.
- Capturer latence moyenne et jitter.

