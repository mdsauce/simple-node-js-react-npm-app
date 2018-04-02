#!/usr/bin/env sh

echo 'Run the webdriver.io/mocha framework tests on SauceLabs'
set -x
npm e2etest
set +x