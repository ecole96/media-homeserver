#!/bin/bash

set -e

# reset dirs
rm -rf ./config
rm -rf ./downloads
rm -rf ./movies
rm -rf ./tv

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
