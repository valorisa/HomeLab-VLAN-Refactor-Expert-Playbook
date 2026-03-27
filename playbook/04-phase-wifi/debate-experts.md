# Phase 04 — Débat d'experts (Wi-Fi)

## Nombre de SSID
- [WiFiMaster] : « Deux SSID + PPSK suffisent. »
- [BudgetHack] : « WPA2-Enterprise serait gratuit. »
- **Décision** : 2 SSID (Home / Guests) + PPSK.

## Contrôleur
- [WiFiMaster] : « VM dédiée, snapshots. »
- [StorageNinja] : « Docker possible mais moins stable. »
- **Décision** : VM Debian dédiée.

## Placement AP
- [CiscoFan] : « PoE via 2960X obligatoire. »
- **Décision** : PoE direct, puissance calibrée.

