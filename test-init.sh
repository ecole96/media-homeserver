#!/bin/bash

set -e

# reset dirs
rm -rf ./config
rm -rf ./data

# initialize new config dirs
mkdir -p ./config/jellyfin
mkdir -p ./config/letsencrypt
mkdir -p ./config/npm
mkdir -p ./config/portainer
mkdir -p ./config/prowlarr
mkdir -p ./config/qbittorrent
mkdir -p ./config/radarr
mkdir -p ./config/sonarr

# initialize content folders
mkdir -p ./data/media/movies
mkdir -p ./data/media/tv
mkdir -p ./torrents/movies
mkdir -p ./torrents/tv
