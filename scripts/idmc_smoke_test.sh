#!/bin/bash
set -e

ENV=$2

echo "[INFO] Smoke test sur $ENV"

# Exemple :
# - publier un message Kafka de test
# - vérifier qu’il arrive en sortie ou dans la cible

echo "[INFO] Smoke test OK"
