#!/bin/bash

# LANDING ZONE
export CONSUL_HTTP_ADDR=http://consul.$1.douterraform.com:8500
export CONSUL_HTTP_TOKEN=aQGs8vpfZmCPmipJzplioPc0icCAAZchQGCkGiH8JSw=
consul kv put POSTGRESQL_HOST $1.waas.db.douterraform.com
consul kv put POSTGRES_USER fewknow
consul kv put POSTGRES_DB postgres
consul kv put POSTGRESQL_PORT 5432
consul kv put POSTGRESQL_NAME postgres
