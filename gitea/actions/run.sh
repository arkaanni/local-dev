#!/bin/sh

chmod +x ./gitea_runner

./gitea_runner register --instance="${GITEA_HOST}" --token="${GITEA_TOKEN}" --labels="${GITEA_RUNNER_LABELS}" --no-interactive
./gitea_runner daemon &

sleep infinity
