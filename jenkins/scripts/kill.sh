#!/usr/bin/env sh

echo 'The following command terminates the "npm start" process using its PID'
echo '(written to ".pidfile"), all of which were conducted when "deliver.sh"'
echo 'was executed.'
set -x
echo 'current node process' ps -ax | grep node
echo $(cat .pidfile)
kill $(cat .pidfile)
