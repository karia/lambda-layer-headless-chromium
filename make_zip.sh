#!/usr/bin/env bash

curl -o chromedriver_linux64.zip -L -sS "https://chromedriver.storage.googleapis.com/79.0.3945.16/chromedriver_linux64.zip"
unzip chromedriver_linux64.zip

curl -o headless-chrome.zip -L -sS "https://github.com/adieuadieu/serverless-chrome/releases/download/v1.0.0-55/stable-headless-chromium-amazonlinux-2017-03.zip"
unzip headless-chrome.zip

mkdir -p headless/python/bin/
mv chromedriver headless-chromium headless/python/bin/

zip -r headless.zip headless
