# Container file used to develop

FROM rust:latest
WORKDIR /root

# Leave container running until shutdown
CMD ["tail", "-f", "/dev/null"]