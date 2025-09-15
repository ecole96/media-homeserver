#!/bin/bash

set -e

# reset dirs
rm -rf ./config
rm -rf ./data

# initialize new config dirs
mkdir -p ./config/jellyfin
mkdir -p ./config/portainer
mkdir -p ./config/prowlarr
mkdir -p ./config/qbittorrent
mkdir -p ./config/radarr
mkdir -p ./config/sonarr
mkdir -p ./config/cloudflared

# initialize cloudflared config (you will need to edit this before launching the Docker stack)
cp ./cloudflared_config.yml ./config/cloudflared/config.yml

# initialize content folders
mkdir -p ./data/media/movies
mkdir -p ./data/media/tv
mkdir -p ./data/torrents/movies
mkdir -p ./data/torrents/tv
