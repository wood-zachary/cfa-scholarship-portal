FROM node:25-bookworm-slim

# install the linux version of all dependencies
RUN apt update

WORKDIR /srv
WORKDIR /srv/cfa-scholarship-portal/