FROM node:24-bullseye

# install the linux version of all dependencies
RUN apt update

RUN corepack enable

WORKDIR /srv
WORKDIR /srv/cfa-scholarship-portal/