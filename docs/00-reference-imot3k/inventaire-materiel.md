# Inventaire matériel observé (source iMot3k)

| Catégorie | Matériel observé | État / Firmware | Notes |
|-----------|------------------|-----------------|-------|
| Pare-feu | Fortinet 60F | v7.0.x | Support LACP, policy-based routing, proxy mDNS. |
| Switch L2 | Cisco Catalyst 2960X-48LPD-L | IOS 15.2(7)E | 48 ports PoE+, stack ready, ventilé. |
| Switch 10G | MikroTik CRS305-1G-4S+IN | RouterOS 7 | Mode bridge + VLAN filtering. |
| Hyperviseur | Proxmox VE (Supermicro) | 8C / 64 Go | Double NIC SFP+ 10G. |
| Stockage | TrueNAS SCALE + HBA LSI 9300-8i | ZFS 6 disques | Cache NVMe optionnel. |
| Backup | QNAP TS-453D | 4x HDD 8 To | 2.5 Gb/s, CPU Celeron. |
| Wi-Fi | 4x Ubiquiti U7 Lite | Firmware 8.x | PoE+ requis, PPSK on-prem. |
| Contrôleur | VM Debian (UniFi Network Application) | 4 vCPU / 4 Go | Backups auto hebdo. |
| Services | Windows Server 2022 | DC/DHCP/DNS | Virtualisé sur Proxmox. |

## Observations
- Le 2960X doit être positionné dans un espace bien ventilé.
- Le FortiGate est largement dimensionné, idéale pour expérimenter.
- Les AP Wi-Fi 7 restent compatibles 6E tant que les clients ne sont pas upgrade.
