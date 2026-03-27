# Phase 07 — Validation

| Test | Méthode | Résultat |
|------|---------|----------|
| Targets Prometheus | UI Prometheus | Tous `UP`. |
| Grafana | https://grafana.lab.local | Dashboards accessibles. |
| Ansible backup | `ansible-playbook backup-config.yml` | Fichiers générés. |
| Alertes | Simulation CPU | Notification ntfy reçue. |
