dev:

run:
    podman run -it --rm --userns="keep-id:uid=$(id -u),gid=$(id -g)" -v "$(pwd)":/root -w /$PROJECT_NAME:latest bash

build:
    podman build -t $PROJECT_NAME:latest .