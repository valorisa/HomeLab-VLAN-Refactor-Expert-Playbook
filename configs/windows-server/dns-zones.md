# DNS — Windows Server 2022

## Zones
- `lab.local` (zone directe)
- `10.20.10.in-addr.arpa` (reverse)
- `10.20.20.in-addr.arpa`
- ...

## Bonnes pratiques
- Créer des enregistrements pour FortiGate, Cisco, Proxmox, TrueNAS, QNAP, UniFi.
- Ajouter des CNAME pour les services (`grafana.lab.local` → VM correspondante).
- Activer le scavenging (7 jours).
- Sauvegarder la config DNS avec `dnscmd /zoneexport`.

