# Conventions de nommage IDMC

## Préfixes par référentiel
- REF_A_
- REF_B_

## Pipelines / Flows
- INGEST_ : entrée des données
- TRANSFORM_ : enrichissement / mapping
- PUBLISH_ : diffusion Kafka ou API

## Connexions
Les connexions portent le suffixe d’environnement :
- KAFKA_CONN_DEV
- KAFKA_CONN_INT
- KAFKA_CONN_PREPROD
- KAFKA_CONN_PROD

## Topics Kafka
- <referentiel>.in
- <referentiel>.out
- <referentiel>.dlq

## Versioning
- Version Git : vX.Y.Z
- Un tag = une release
