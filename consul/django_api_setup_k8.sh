#!/bin/bash

# Consul
export CONSUL_HTTP_ADDR=http://localhost:8500
export CONSUL_HTTP_TOKEN="auth-token"

consul kv put POSTGRESQL_HOST postgres-postgresql.default.svc.cluster.local
consul kv put POSTGRES_USER dbuser
consul kv put POSTGRES_DB postgres
consul kv put POSTGRESQL_PORT 5432
consul kv put POSTGRESQL_NAME postgres
