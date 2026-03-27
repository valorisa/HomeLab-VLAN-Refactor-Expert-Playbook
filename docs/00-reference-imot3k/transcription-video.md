# Transcription commentée — iMot3k « Je change TOUT mon réseau »

## Résumé rapide
- 25 minutes de refonte complète d'un homelab.
- Transition d'un réseau plat vers une architecture segmentée.
- Mise en avant des erreurs fréquentes et de la méthode empirique.

## Timeline commentée
| Timestamp | Séquence | Commentaire d'analyse |
| 00:00 | Accroche et rappel du contexte | Rappel de la dette technique accumulée. |
| 02:30 | Audit de l'existant | Identification des dépendances croisées IoT / prod. |
| 06:10 | Sélection du nouveau matériel | Arbitrage coût/perf, priorité au marché de l'occasion. |
| 11:45 | Passage en maintenance | Sauvegardes + plan de rollback minimaliste. |
| 15:20 | Création des VLANs | Première rencontre avec les limites du VLAN 1 historique. |
| 18:55 | Déploiement Wi-Fi | Introduction au PPSK et à la réduction du nombre de SSID. |
| 22:10 | Validation et post-mortem | Retour d'expérience transparent, erreurs assumées. |

## Enseignements clés
1. La dette technique s'accumule silencieusement sur un réseau plat.
2. Les migrations réseau doivent être scriptées et répétables.
3. Les erreurs sont inévitables, l'important est de documenter le rollback.
4. Le marché de l'occasion est pertinent si l'on maîtrise les firmwares.
5. Le Wi-Fi multi-SSID n'est pas scalable à long terme.

## Points ouverts pour la communauté
- Comment industrialiser la validation post-migration ?
- Quels outils d'observabilité low-cost adopter après la refonte ?
- Quel est le juste équilibre entre VLANs fonctionnels et micro-segmentation ?
