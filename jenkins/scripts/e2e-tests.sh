#!/usr/bin/env sh

echo 'Run the webdriver.io/mocha framework tests on SauceLabs'
set -x
npm start &
sleep 1
echo $! > .testpidfile

npm run e2etest

kill $(cat .testpidfile)
set +x
