#!/bin/bash

# Vault
source vault/vault-setup.sh 
setup_vault
export VAULT_ADDR=http://localhost:8200
export VAULT_TOKEN=root
vault kv put secret/django_secrets DJANGO_SECRET_KEY=changeme\
POSTGRESQL_PASS=testing123!\
RABBITMQ_PASSWORD=rabbit

# Consul
consul kv put POSTGRESQL_HOST postgres
consul kv put POSTGRES_USER fewknow
consul kv put POSTGRES_DB postgres
consul kv put POSTGRESQL_PORT 5432
consul kv put POSTGRESQL_NAME postgres

