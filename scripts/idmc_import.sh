#!/bin/bash
set -e

ENV=$2
IN=$4

echo "[INFO] Import IDMC assets"
echo "[INFO] Environnement: $ENV"
echo "[INFO] Package: $IN"

source env/${ENV}.env

# Exemple logique
# idmc asset import --input "$IN" --env "$ENV"

echo "[INFO] Import terminé sur $ENV"
