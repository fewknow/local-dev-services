#!/bin/bash

# Vault
export VAULT_ADDR=http://vault.$1.douterraform.com:8200
export VAULT_TOKEN=$(aws s3 cp s3://$1-bucket-dev/vault_credentials.txt /dev/stdout | grep root_token | sed 's/^.*: //')
curl ${VAULT_ADDR}
if [ $? -eq 0 ]; then
  echo "Vault connectivity test to ${VAULT_ADDR} successful"
else
  echo "Vault not online at ${VAULT_ADDR}, go to https://gitlab.com/DigitalOnUs/singularity/caas/terraform_vpc and follow the instructions"
  exit 1
fi
 vault kv put secret/django_secrets DJANGO_SECRET_KEY=changeme\
  POSTGRESQL_PASS=testing123!\
  RABBITMQ_PASSWORD=rabbit


# Consul
export CONSUL_HTTP_ADDR=http://consul.$1.douterraform.com:8500
export CONSUL_HTTP_TOKEN=$(aws s3 cp s3://$1-bucket-dev/consul_credentials.txt /dev/stdout | grep acl_master_token | sed 's/^.*: //')
curl $CONSUL_HTTP_ADDR
if [ $? -eq 0 ]; then
  echo "Consul connectivity test to ${CONSUL_HTTP_ADDR} successful"
else
  echo "Consul not online at ${CONSUL_HTTP_ADDR}, go to https://gitlab.com/DigitalOnUs/singularity/caas/terraform_vpc and follow the instructions"
  exit 1
fi
consul kv put POSTGRESQL_HOST $1.caas.db.douterraform.com
consul kv put POSTGRES_USER fewknow
consul kv put POSTGRES_DB postgres
consul kv put POSTGRESQL_PORT 5432
consul kv put POSTGRESQL_NAME postgres
echo "Vault token is ${VAULT_TOKEN}"
echo "Consul token is ${CONSUL_HTTP_TOKEN}"

