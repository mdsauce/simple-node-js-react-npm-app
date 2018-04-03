#!/usr/bin/env sh

echo 'Run the webdriver.io/mocha framework tests on SauceLabs'
set -x
npm start &
sleep 1
echo $! > .testpidfile
set +x

npm run e2etest

set -x
kill $(cat .testpidfile)