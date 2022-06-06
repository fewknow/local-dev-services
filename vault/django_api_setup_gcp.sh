#!/bin/bash

# LANDING ZONE
 export VAULT_ADDR=http://localhost:8200
 export VAULT_TOKEN="$1"
 echo $VAULT_TOKEN
 vault kv put secret/django_secrets DJANGO_SECRET_KEY=changeme\
  POSTGRESQL_PASS=testing123!\
  RABBITMQ_PASSWORD=rabbit