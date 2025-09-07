#!/bin/sh

chmod +x ./gitea_runner

./gitea_runner register --instance ${GITEA_HOST} --token ${GITEA_TOKEN} --labels "linux:host" --config config.yaml --no-interactive
./gitea_runner daemon --config config.yaml
