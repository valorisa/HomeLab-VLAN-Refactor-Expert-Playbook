# Table VLAN détaillée

| VLAN | Nom | Sous-réseau | Passerelle | DHCP Scope | Services autorisés | Notes |
|------|-----|-------------|------------|------------|--------------------|-------|
| 10 | ADMIN | 10.20.10.0/24 | 10.20.10.254 | 10.20.10.50-199 | SSH, RDP, HTTPS | Accès restreint, MFA recommandé. |
| 20 | VOIP | 10.20.20.0/24 | 10.20.20.254 | 10.20.20.10-120 | SIP, RTP | QoS strict. |
| 30 | IOT | 10.20.30.0/24 | 10.20.30.254 | 10.20.30.100-230 | MQTT, HTTP filtré | Isolation renforcée. |
| 50 | PC | 10.20.50.0/24 | 10.20.50.254 | 10.20.50.30-230 | HTTPS, SMB, RDP | Segment utilisateur principal. |
| 100 | GUEST | 10.20.100.0/24 | 10.20.100.254 | 10.20.100.50-250 | Internet only | Isolation totale. |
| 200 | WIFI-MGMT | 10.20.200.0/24 | 10.20.200.254 | 10.20.200.10-40 | Adoption UniFi | Aucun accès sortant. |
| 300 | CAMERAS | 10.20.300.0/24 | 10.20.300.254 | 10.20.300.20-120 | RTSP vers NVR | Pas d'Internet. |
| 999 | NATIVE-BH | non routé | - | - | Aucun | VLAN natif blackhole. |
| 1000 | MERDOUILLE | 10.20.0.0/24 | 10.20.0.1 | 10.20.0.50-200 | Temporaire | À assécher progressivement. |

## Rappels
- Pas de service exposé sur VLAN 999.
- IP statiques documentées dans ce fichier et dans les configs.
