#!/bin/sh
set -ex

mkdir -p tmp/

for URL in $URLS
do
  echo "$URL"
  cd chrome-headless-screenshots/
  node index.js --url="$URL" --full --delay=5000 --output "../tmp/output.png"
  cd ../
  node upload.js URL "tmp/output.png"
  rm "tmp/output.png"
done
