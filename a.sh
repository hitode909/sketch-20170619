#!/bin/sh
set -ex

cd chrome-headless-screenshots/
node index.js --url="http://blog.sushi.money/" --full --delay=5000 --output "../output.png"
