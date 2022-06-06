#!/bin/bash

consul kv put POSTGRESQL_HOST postgres
consul kv put POSTGRES_USER fewknow
consul kv put POSTGRES_DB postgres
consul kv put POSTGRESQL_PORT 5432
consul kv put POSTGRESQL_NAME postgres
consul kv put RABBITMQ_USER rabbitmq
