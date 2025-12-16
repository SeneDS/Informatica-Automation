# Runbook – Gestion des rejets IDMC

## 1. Objectif
Réduire le temps de diagnostic et sécuriser le reprocessing des rejets
sur les flux IDMC (Kafka ↔ CAI/CDI ↔ MDM/R360/B360).

---

## 2. Typologie des rejets

### Technique
- Authentification IDMC
- Agent indisponible
- Timeout / quota
- Kafka inaccessible

### Données / Fonctionnel
- Champs obligatoires manquants
- Erreur de type
- Règles MDM (match/merge)
- Doublons

### Contrat d’échange
- Schéma Kafka incompatible
- Version non supportée
- Champs renommés/supprimés

---

## 3. Circuit de traitement

1. Détection (alerte / monitoring)
2. Identification du flux et environnement
3. Récupération du correlationId
4. Classification du rejet
5. Parking en DLQ (si nécessaire)
6. Correction
7. Reprocessing contrôlé
8. Vérification
9. Clôture + prévention

---

## 4. DLQ & Reprocessing

- Chaque flux Kafka possède un topic DLQ
- Les messages sont conservés avec :
  - messageId
  - correlationId
  - cause de rejet
- Le rejeu doit être **idempotent**

---

## 5. KPI suivis
- Taux de rejet par flux
- Backlog DLQ
- MTTR
- Top causes de rejet
