#!/bin/bash

# LANDING ZONE
export CONSUL_HTTP_ADDR=http://localhost:8500
export CONSUL_HTTP_TOKEN=aQGs8vpfZmCPmipJzplioPc0icCAAZchQGCkGiH8JSw=
consul kv put POSTGRESQL_HOST http://34.102.64.109:5432
consul kv put POSTGRES_USER gcptest
consul kv put POSTGRES_DB postgres
consul kv put POSTGRESQL_PORT 5432
consul kv put POSTGRESQL_NAME postgres