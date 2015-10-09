#!/bin/bash
set -e

sed -e 's,${FEED},'"${FEED}"',g' \
    -e 's,${INTERVAL},'"${INTERVAL}"',g' \
    -e 's,${SLACK_HOOK},'"${SLACK_HOOK}"',g' \
    -e 's,${SLACK_ICON},'"${SLACK_ICON}"',g' \
    -e 's,${SLACK_BOT_USER},'"${SLACK_BOT_USER}"',g' \
    -i /usr/src/app/config.tmpl

cp /usr/src/app/config.tmpl /usr/src/app/config.coffee

cat /usr/src/app/node_modules/rss-slack-integration/package.json

exec "$@"
