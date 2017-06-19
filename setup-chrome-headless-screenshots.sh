#!/bin/sh
set -ex

if [ ! -d chrome-headless-screenshots ]; then
  git clone https://github.com/schnerd/chrome-headless-screenshots.git
fi

cd chrome-headless-screenshots/
git pull
yarn
