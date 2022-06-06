#!/bin/bash
source $(dirname $0)/vault-setup.sh
setup_vault

# local
 export VAULT_ADDR=http://localhost:8200
 export VAULT_TOKEN=root
 vault kv put secret/django_secrets DJANGO_SECRET_KEY=changeme\
  POSTGRESQL_PASS=testing123!\
  RABBITMQ_PASSWORD=rabbitmq
