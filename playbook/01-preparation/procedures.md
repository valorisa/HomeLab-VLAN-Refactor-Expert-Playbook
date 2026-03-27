# Phase 01 — Préparation

## Objectif
Sécuriser l'existant et préparer une migration sans surprise.

## Checklist
1. **Inventaire**
   - Export des MAC/IP actuelles.
   - Liste des services critiques (DNS, DHCP, Proxmox, TrueNAS).

2. **Sauvegardes**
   - FortiGate : backup complet.
   - Cisco 2960X : `copy running-config tftp:`.
   - UniFi : export de la dernière sauvegarde.
   - Proxmox : snapshots des VM critiques.

3. **Plan de rollback**
   - Documentation des ports physiques.
   - Accès console vérifié (câble USB-série).
   - VLAN “RETTAP” prêt si isolement nécessaire.

4. **Fenêtre de tir**
   - Annoncer la maintenance.
   - Prévoir 4 h avec marge.

5. **Outillage**
   - PC portable avec RJ45 + alimentation.
   - Scripts clonés localement.
   - IP statiques imprimées.

6. **Tests préalables**
   - Ping FortiGate/Cisco/TrueNAS/Proxmox.
   - Vérifier les sauvegardes QNAP <72 h.
   - Tester l’accès console.

