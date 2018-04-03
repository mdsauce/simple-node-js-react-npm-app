#!/usr/bin/env sh

echo 'The following command terminates the "npm start" process using its PID'
echo '(written to ".pidfile"), all of which were conducted when "deliver.sh"'
echo 'was executed.'
echo 'current node process'
set -x
ps -ax | grep npm

$(cat .pidfile)
kill $(cat .pidfile)
