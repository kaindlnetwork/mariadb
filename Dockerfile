FROM lscr.io/linuxserver/mariadb

MAINTAINER Fabian Kaindl <gitlab-docker@fabiankaindl.de>
# Add Healthcheck
HEALTHCHECK --interval=30s --timeout=3s \
  CMD mysqladmin ping -h localhost
