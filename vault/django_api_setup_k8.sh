#!/bin/bash

export VAULT_ADDR='http://localhost:31200'
export VAULT_TOKEN='root'
vault secrets disable secret
vault secrets enable -version=1 -path=secret -description=$SECRET_DESCRIPTION kv
vault kv put secret/django_secrets DJANGO_SECRET_KEY=changeme \
POSTGRESQL_PASS=c00kOUT \
RABBITMQ_PASSWORD=rabbitmq
