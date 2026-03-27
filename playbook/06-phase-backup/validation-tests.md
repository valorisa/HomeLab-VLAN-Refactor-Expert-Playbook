# Phase 06 — Validation

| Test | Méthode | Attendu |
|------|---------|---------|
| Rsync dry-run | `rsync -av --dry-run` | Liste cohérente. |
| Débit | `iperf3 -c qnap -P 4 -t 30` | > 8 Gb/s cumulé. |
| Arrêt QNAP | Logs API | `System shutting down`. |
| Restauration | `rsync -av qnap:/test /restore` | Hash identique. |
