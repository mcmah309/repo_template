
```bash
podman run -it --rm --userns="keep-id:uid=$(id -u),gid=$(id -g)" -v "$(pwd)":/app -w /app rust bash
```
-i: iteractive mode
-t: pseudo tty for the container
--rm: remove container on exit
--userns`...`: map the user's UID and GID on the host to the same UID and GID inside the container. This is useful for ensuring that files created inside the container will have the same ownership as the user on the host, which is particularly important when mounting volumes (permissions and such)
-v `args`: mount the container here to /app inside
-w: set working directory -w
rust: container named rust
bash: launch with command `bash` (starts an interactive session)

