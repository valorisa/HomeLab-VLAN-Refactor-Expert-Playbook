# Checklist post-migration

## Réseau
- [ ] LAG up.
- [ ] VLAN natif 999 confirmé.
- [ ] Ping inter-VLAN selon policies.

## Wi-Fi
- [ ] AP adoptés.
- [ ] PPSK attribue les bons VLANs.
- [ ] SSID Invités isolé.

## Services
- [ ] DHCP opérationnel.
- [ ] DNS résout les enregistrements internes.
- [ ] AD `dcdiag` clean.

## Stockage / backup
- [ ] Rsync OK.
- [ ] QNAP arrêté automatiquement.
- [ ] Test de restauration effectué.

## Observabilité
- [ ] Dashboard Grafana sauvegardé.
- [ ] Ansible backup exécuté.

Signature : __________________ / Date : __________
