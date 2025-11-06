FROM node:25-bookworm-slim

# install the linux version of all dependencies
RUN apt update


RUN npm install -g corepack --force \
    && corepack enable \
    && corepack prepare yarn@4.10.3 --activate

WORKDIR /srv/cfa-scholarship-portal/

COPY package.json yarn.lock ./
COPY frontend/package.json frontend/
COPY backend/package.json backend/

RUN yarn config set nodeLinker node-modules
RUN yarn install --immutable