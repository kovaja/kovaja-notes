### DOCKER CHEAT SHEET

| Task  | Command  | notes  |
|---|---|---|
| Build image |`docker build --tag "kovaja:hello-world-1" .` | `--no-cache`: no chache used during build|
| Build image |`docker build -t "kovaja:hello-world-1" .` | `-t dockerid:app-name` |
| Run container with built image |`docker run kovaja:hello-world-1` |  |
| Run as detached |`docker run -d kovaja:hello-world-1` |  |
| Map ports |`docker run -p 8000:3000 kovaja:hello-world-1` |  <os_port>:<docker_port> |
| Attach back |`docker attach <container_id>` | you can use name instead of id |
| List containers |`docker container ls` |  |
| List containers better |`docker ps` |  |
| Read logs |`docker logs wonderful_panini --tail 10` | tail -> number of rows, default all |
| Live tail logs |`docker logs --follow wonderful_panini` |  |
| Stop container |`docker stop <container_id>` | you can use name instead of id |
| Remove docker image |`docker image rm kovaja:hello-world-1 -f` | -f to force |
| Get container CLI |`docker exec -it <container_id> /bin/bash` | |
