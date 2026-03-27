# Phase 06 — Débat d'experts (Backup)

## Méthode
- [StorageNinja] : « Rsync scripté + snapshots. »
- [BudgetHack] : « Réplication TrueNAS native suffit. »
- **Décision** : Rsync + snapshots.

## Arrêt QNAP
- [FortiGuru] : « Couper après backup pour réduire la surface d'attaque. »
- **Décision** : Script d'arrêt automatique.

## MTU 10G
- [CiscoFan] : « Jumbo frames sur le tronçon CRS305 ↔ NAS uniquement. »
- **Décision** : MTU 9000 sur liens SFP+ internes.

