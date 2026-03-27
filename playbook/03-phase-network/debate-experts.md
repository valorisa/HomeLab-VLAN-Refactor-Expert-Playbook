# Phase 03 — Débat d'experts (Réseau)

## LAG FortiGate ↔ Cisco
- [CiscoFan] : « channel-group 1 mode active. »
- [FortiGuru] : « Vérifier MTU et health-check. »
- **Décision** : LACP actif, MTU 1500, monitoring SNMP.

## VLAN natif
- [BudgetHack] : « Utilisons VLAN 1, c'est plus simple. »
- [CiscoFan] : « VLAN 999 sinon attention aux attaques. »
- **Décision** : VLAN 999 blackhole partout.

## DHCP relay
- [StorageNinja] : « Centraliser sur Windows Server. »
- **Décision** : FortiGate en relais unique.

## Policies firewall
- [WiFiMaster] : « Autorisons mDNS seulement là où nécessaire. »
- **Décision** : ACL explicites, service mDNS proxifié.

