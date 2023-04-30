# Install media stack

```
docker network create mynetwork
---

# Install Jellyfin, Radarr, Sonarr, Jackett and Transmission stack
docker-compose up -d


# Configure Transmission

- From backend, Run below commands

```
docker exec -it transmission bash # Get inside transmission container

mkdir /downloads/movies /downloads/tvshows
chown 1000:1000 /downloads/movies /downloads/tvshows
```

# Add indexer to Jackett

- Open Jackett UI at http://localhost:9117
- Add indexer
- Search for torrent indexer (e.g. the pirates bay, YTS)
- Add selected

# Configure Radarr

- Open Radarr at http://localhost:7878
- Settings --> Media Management --> Check mark "Movies deleted from disk are automatically unmonitored in Radarr" under File management section --> Save
- Settings --> Indexers --> Add --> Add Rarbg indexer --> Add minimum seeder (4) --> Test --> Save
- Settings --> Indexers --> Add --> Torznab --> Follow steps from Jackett to add indexer
- Settings --> Download clients --> Transmission --> Add Host (transmission / qbittorrent) and port (9091 / 5080) --> Username and password if added --> Test --> Save **Note: If VPN is enabled, then transmission / qbittorrent is reachable on vpn's service name**
- Settings --> General --> Enable advance setting --> Select AUthentication and add username and password

# Add a movie

- Movies --> Search for a movie --> Add Root folder (/downloads) --> Quality profile --> Add movie
- Go to transmission (http://localhost:9091) and see if movie is getting downloaded.

# Configure Jellyfin

- Open Jellyfin at http://localhost:8096
- Configure as it asks for first time.
- Add media library folder and choose /data/movies/

# Configure Jackett

- Add admin password
