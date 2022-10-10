#!/usr/bin/env sh
set -eu

mkdir -p ~/.ssh
echo "$INPUT_SSH_PRIVATE_KEY" > ~/.ssh/id_rsa
chmod 400 ~/.ssh/id_rsa
ssh-keyscan -t rsa "$INPUT_GIT_SERVER_DOMAIN" >> ~/.ssh/known_hosts
