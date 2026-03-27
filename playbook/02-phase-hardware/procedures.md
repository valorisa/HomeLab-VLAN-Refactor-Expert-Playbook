# Phase 02 — Procédures

## Installation HBA
1. Arrêter TrueNAS.
2. Installer la carte dans le slot PCIe x8.
3. Connecter les câbles Mini-SAS.
4. Vérifier via `sas3flash -list`.
5. Flasher en mode IT si besoin.
6. Vérifier `zpool status`.

## Mise en place CRS305
1. Fixer le switch, connecter à l'UPS.
2. Configurer management (IP 10.20.10.x).
3. Créer le bridge, activer VLAN filtering.
4. Câbler SFP+ (TrueNAS, Proxmox, Workstation).
5. Vérifier les liens (LED vert fixe).

## Tests électriques
- Relever la consommation totale via l'UPS.
- Noter l'autonomie estimée.

