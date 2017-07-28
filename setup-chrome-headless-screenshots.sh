#!/bin/sh
set -ex

if [ ! -d chrome-headless-screenshots ]; then
  rm -rf chrome-headless-screenshots
fi

git clone https://github.com/schnerd/chrome-headless-screenshots.git

cd chrome-headless-screenshots/
git pull
yarn
