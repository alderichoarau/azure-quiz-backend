#!/usr/bin/env bash
# Local PostgreSQL setup for azure-quiz-backend.
#
# The app's `default` Spring profile (active when no other profile is set,
# see application.yml) expects a local Postgres reachable on
# jdbc:postgresql://localhost:5432/quizz with user/password "quizz".
#
# Easiest option: use the docker-compose.yml at the repo root.
#
#   docker compose up -d
#   ./mvnw spring-boot:run
#
# Flyway then creates the schema and seeds the AZ-900 content automatically.
#
# If you'd rather use a Postgres already installed on your machine instead of
# Docker, create the matching role/database with:
#
#   createuser --pwprompt quizz   # enter "quizz" as password when prompted
#   createdb --owner=quizz quizz
#
# Everything below this line is legacy: an earlier draft that provisioned a
# throwaway Postgres in Azure Container Instances for remote testing. It is
# NOT used by the app (wrong db/user names: mydb/azureadmin instead of
# quizz/quizz) and is kept only for reference. Prefer docker-compose above
# for local dev; the real target infra (PostgreSQL Flexible Server) is
# provisioned by Terraform in the azure-infra-terraform repo.
#
# az storage account create \
#   --resource-group rg-shared-prf2026 \
#   --name storagepgprf2026 \
#   --sku Standard_LRS \
#   --location francecentral
#
# az storage account keys list \
#   --resource-group rg-shared-prf2026 \
#   --account-name storagepgprf2026 \
#   --query "[0].value" -o tsv
#
# az storage share create \
#   --account-name storagepgprf2026 \
#   --name pgdata
#
# az container create \
#   --resource-group rg-shared-prf2026 \
#   --name postgres-container \
#   --image postgres:17 \
#   --os-type Linux \
#   --cpu 2 \
#   --memory 2 \
#   --environment-variables POSTGRES_USER=azureadmin POSTGRES_DB=mydb \
#   --secure-environment-variables POSTGRES_PASSWORD='<redacted>' \
#   --ports 5432 \
#   --ip-address Public \
#   --azure-file-volume-account-name storagepgprf2026 \
#   --azure-file-volume-account-key '<redacted>' \
#   --azure-file-volume-share-name pgdata \
#   --azure-file-volume-mount-path /var/lib/postgresql/data \
#   --location francecentral
#
# az container show \
#   --resource-group rg-shared-prf2026 \
#   --name postgres-container \
#   --query ipAddress.ip -o tsv
