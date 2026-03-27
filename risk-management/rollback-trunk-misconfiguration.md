# Rollback — Trunk Cisco/FortiGate

1. Console sur le Cisco.
2. `interface range Gi1/0/45-46` ➜ `shutdown`.
3. `configure replace flash:pre-change.cfg force`.
4. Vérifier `show vlan brief`.
5. Réactiver les ports quand tout est cohérent.
