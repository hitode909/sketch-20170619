#!/bin/sh
set -ex

URL="http://blog.sushi.money/"

mkdir -p tmp/
cd chrome-headless-screenshots/
node index.js --url="$URL" --full --delay=5000 --output "../tmp/output.png"
cd ../
node upload.js URL "tmp/output.png"
