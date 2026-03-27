# Phase 03 — Synthèse

1. Agrégat `agg-core` (FortiGate) ↔ `Port-channel1` (Cisco).
2. VLAN natif 999 non routé.
3. Interfaces virtuelles .254 pour chaque VLAN.
4. DHCP relay par VLAN vers 10.20.10.10.
5. Policies documentées dans `configs/fortinet/fortigate-firewall-policies.conf`.
6. mDNS limité (VLAN 50 ↔ 30) via proxy.

