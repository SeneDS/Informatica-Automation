# IDMC – Référentiels CDC

Ce dépôt contient :
- la documentation opérationnelle (runbook rejets)
- la configuration des référentiels IDMC
- les manifests d’assets à déployer
- les scripts d’export/import IDMC
- les pipelines GitLab CI/CD

## Objectifs
- Standardiser la gestion des rejets (TMA)
- Automatiser la promotion DEV → INT → PREPROD → PROD
- Garantir la traçabilité et la reproductibilité des déploiements

## Technologies
- Informatica IDMC (CAI, CDI, MDM, R360, B360)
- Kafka
- GitLab CI/CD

## Environnements
- DEV : développement
- INT : intégration
- PREPROD : validation métier
- PROD : production

## Principe CI/CD
1. Validation des manifests
2. Export des assets IDMC
3. Packaging (artefact)
4. Import automatisé DEV / INT
5. Smoke tests
6. Déploiement PREPROD / PROD (manuel)
