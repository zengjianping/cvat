#!/bin/bash

export CVAT_HOST=192.168.10.30

docker compose -f docker-compose.yml -f docker-compose.override.yml -f components/serverless/docker-compose.serverless.yml up -d


