FROM lscr.io/linuxserver/mariadb

# Add Healthcheck
HEALTHCHECK --interval=30s --timeout=3s \
  CMD mysqladmin ping -h localhost

RUN apk -U upgrade && \
    apk del iputils apk-tools alpine-keys wget
