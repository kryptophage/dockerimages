# ----------------------------------
# Pterodactyl Debian Buster Slim Dockerfile
# Environment: debianbusterslim
# Minimum Panel Version: 0.6.0
# ----------------------------------
FROM debian:stretch-slim

RUN apk add --no-cache curl ca-certificates openssl git tar bash sqlite fontconfig expect && adduser -D -h /home/container container

USER container
ENV  USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["bash", "/entrypoint.sh"]
