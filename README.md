# Installation of local environment

## Description

With no modifications, this repository will stand up the following docker containers on your local machine:

- Postgres
- Vault
- Consul

Additional services that can be stood up are:

- RabbitMQ
- Elastic-Search
- Logstash

## Prerequisites
1. You've run the `./setup_bash_profile.sh` on your macbook in https://github.com/fewknow/mac_setup_for_devops
2. docker is installed and running
3. docker-compose installed
https://hub.docker.com/editions/community/docker-ce-desktop-mac is a good dashboard that will take care of #1 and 2.


## Installation

`docker-compose up -d`
```
http://localhost:8200
http://localhost:8500

```

## Cleanup

`docker-compose down --remove-orphans`
This will shut down all containers whether you chose "all" or "base" in step 2 above.

## Maintainers

- Sam Flint sam@scalableinc.com
