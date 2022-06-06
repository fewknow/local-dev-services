#!/bin/bash
# source $(dirname $0)/vault-setup.sh
# setup_vault

# export VAULT_ADDR=http://localhost:8200
# export VAULT_TOKEN=root
# vault kv put secret/django_secrets DJANGO_SECRET_KEY=changeme\
#  POSTGRESQL_PASS=testing123!\
#  RABBITMQ_PASSWORD=rabbit
#

# LANDING ZONE
export VAULT_ADDR=http://vault.$2.douazure.com:8200
export VAULT_TOKEN=$1
echo $VAULT_TOKEN
vault secrets enable -path=secret/ kv
vault kv put secret/django_secrets DJANGO_SECRET_KEY=changeme\
  POSTGRESQL_PASS='#FRXtR0RR-Kd}Z]f#EN<G6<z'\
  RABBITMQ_PASSWORD=rabbit
