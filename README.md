- This setup  utilize docker compose as your developer environment
- For github repo, setting 2 action secrets
```
DOCKERHUB_TOKEN
DOCKERHUB_USER
```
- We have
  - Django + Postgresql
  - Copy bellow to .bash_profile
  ```bash
    # Docker compose alias
    alias dcu="docker compose up -d" # Run project
    alias dcd="docker compose down" # Stop project
    alias dcdr="docker compose down --rmi local" # Stop project and delete image
    alias dcb="docker compose build" # Build project

    # Support exec inside docker compose
    function dce() {
      if [ -n "$2" ]; then
        docker compose exec "$1" bash "$2"
      else
        docker compose exec "$1" bash
      fi
    }
  ```

- To connect debugger in pycharm, follow :https://www.jetbrains.com/help/pycharm/2022.1/using-docker-as-a-remote-interpreter.html#config-docker
- If got cannot connect to unix:///var/run/docker.sock, can refer https://intellij-support.jetbrains.com/hc/en-us/community/posts/360010126039-Cannot-connect-to-the-Docker-daemon-at-unix-var-run-docker-sock-Is-the-docker-daemon-running-
