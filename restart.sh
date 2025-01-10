#!/bin/bash

# run as root cronjob
# to add crontab: crontab /media-homeserver/crontab

docker compose -f /media-homeserver/prod.yml down
docker compose -f /media-homeserver/prod.yml up -d
