# Architecture cible — Vue d'ensemble

## Vision
Reproduire dans un homelab avancé les bonnes pratiques d'un réseau d'entreprise segmenté, observable, sécurisé et maintenable.

## Périmètre fonctionnel
- Pare-feu Fortinet pour la sécurité périmétrique et l'inter-VLAN.
- Switch cœur Cisco 2960X pour le L2, PoE et les trunks.
- Backbone 10 Gb/s MikroTik CRS305 pour le stockage.
- Wi-Fi UniFi avec PPSK et VLAN dynamique.
- Services Windows Server 2022 (AD, DNS, DHCP).
- Documentation complète, runbooks, validations et rollbacks.

## Composants majeurs
### Fortinet 60F
- Rôle : routage inter-VLAN, NAT, policies, DHCP relay.
- Atouts : interface claire, LACP, proxy mDNS, nombreuses features sécurité.

### Cisco Catalyst 2960X
- Rôle : switch cœur L2, agrégats, PoE, distribution VLAN.
- Atouts : robustesse, documentation, prix occasion.

### MikroTik CRS305
- Rôle : petit backbone SFP+ 10 Gb/s vers TrueNAS, Proxmox, Workstation.
- Atouts : fanless, VLAN filtering, coût modéré.

### Pile compute / storage
- Proxmox VE pour les VM.
- TrueNAS SCALE pour le stockage principal.
- QNAP TS-453D pour la cible de sauvegarde offline.

## Flux critiques
| Source | Destination | Description | Contrôle |
|--------|-------------|-------------|----------|
| VLAN 10 | VLAN 20/30/50 | Administration | ACL FortiGate + bastion. |
| VLAN 30 | VLAN 10 | mDNS / Spotify Connect | Proxy mDNS contrôlé. |
| VLAN 50 | Internet | Accès user | Filtrage standard, DNS interne. |
| VLAN 10 | CRS305 | Synchronisation stockage | LAG 2x1G + 10G direct. |
| VLAN 100 | Internet | Wi-Fi invités | Isolation totale. |

## Hypothèses
- Toutes les IP critiques sont inventoriées.
- DHCP centralisé (Windows Server) + relais FortiGate.
- Politique firewall “deny by default”.
- Sauvegardes documentées et testées.
