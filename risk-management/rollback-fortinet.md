# Rollback — Fortinet 60F

1. PC en IP statique 192.168.1.2/24 sur port MGMT.
2. Accéder à https://192.168.1.99 ou console.
3. `execute restore config flash backup.conf`.
4. `execute reboot`.
5. Vérifier `diagnose netlink aggregate name agg-core`.
6. Si échec, restauration TFTP depuis image usine.

