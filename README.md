## Setup
1. Install [Docker](https://www.docker.com/)

2. Copy the contents of `.env.example` and paste it into a file at the project root named `.env`

3. In `.env`, replace the value of `WIREGUARD_PRIVATE_KEY` with the Wireguard key provided by your VPN. If you can't use Wireguard, check [Gluetun documentation](https://github.com/qdm12/gluetun) for using OpenVPN (you will also need to update the .ymls with those variables).

4. Replace the `PUID` and `PGID` values with the respective user and group ID you want to run the stack (Google the commands for finding these)

5. In the project directory, run `init.sh` to create the application and media directories (you may need [Git Bash](https://git-scm.com/downloads) on Windows)

6. Start the stack: `docker compose -f <your-compose-file-here.yml> up -d`
    - `local.yml` is for use on a home computer, `prod.yml` for servers (includes [NGINX Proxy Manager](https://nginxproxymanager.com/) as a web proxy and [Portainer](https://www.portainer.io/) as a Docker web interface)
    - Web applications (Radarr, Sonarr, Prowlarr, qBittorrent) are accessible in your browser at `<device-ip>:<host-port>` (host ports by app are found under the `ports` block in the `gluetun` and `jellyfin` sections - it is the number before the colon `:`). If accessed from the same computer they're running on, `localhost:<host-port>` should work. Example, Jellyfin: `localhost:8096`

7. Set up the *arr apps: 2:02 - 13:03 of [this video](https://youtu.be/1eDUkmwDrWU?si=pNR9VGrpcbYrGV3w&t=122) should get you most of the way there. If you set up a tracker in Prowlarr that needs [FlarreSolverr](https://github.com/FlareSolverr/FlareSolverr), it is already included in the stack (look up how to create a tag for FlarreSolverr in Prowlarr).

8. Set up Jellyfin to point to the `tv` and `movies` folders for content

9. Start adding movies / TV in Sonarr and Radarr. Once qBittorrent downloads them to the `downloads` folder, they get moved to the `tv` and `movie` folders where they are accessible from Jellyfin.

## Stop stack
`docker compose -f local.yml down`