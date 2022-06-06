#!/bin/bash

# LANDING ZONE
export CONSUL_HTTP_ADDR=http://consul.$1.douazure.com:8500
export CONSUL_HTTP_TOKEN="4118ff19-59c1-dde9-b61d-e049e62275b1"
consul kv put POSTGRESQL_HOST db.$1.douazure.com
consul kv put POSTGRES_USER psqladmin
consul kv put POSTGRES_DB waas_api_db
consul kv put POSTGRESQL_PORT 5432
consul kv put POSTGRESQL_NAME postgres
