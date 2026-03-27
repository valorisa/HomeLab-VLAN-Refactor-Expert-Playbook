# Phase 02 — Validation

| Test | Commande / Méthode | Attendu |
|------|--------------------|---------|
| HBA détectée | `sas3flash -list` | Firmware à jour. |
| Santé ZFS | `zpool status` | ONLINE. |
| CRS305 ping | `ping 10.20.10.x` | < 1 ms. |
| Lien SFP+ | `interface/ethernet print detail` | 10G full. |
| Charge UPS | Lecture écran | < 60 %. |
