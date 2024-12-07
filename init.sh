#!/bin/bash

set -e

# take down containers (if running)
docker compose -f ./media-homeserver.yml down

# reset dirs
rm -r -f ./config
rm -r -f ./downloads
rm -r -f ./movies
rm -r -f ./tv

# initialize new config dirs
mkdir -p ./config/gluetun
mkdir -p ./config/jellyfin
mkdir -p ./config/letsencrypt
mkdir -p ./config/npm
mkdir -p ./config/portainer
mkdir -p ./config/prowlarr
mkdir -p ./config/qbittorrent
mkdir -p ./config/radarr
mkdir -p ./config/sonarr

# initialize content folders
mkdir -p ./downloads
mkdir -p ./movies
mkdir -p ./tv

# start containers
docker compose -f ./media-homeserver.yml up -d
