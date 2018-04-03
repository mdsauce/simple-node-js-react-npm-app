#!/usr/bin/env sh
# Removing for the moment as we're tearing down the continer at the end of the test anyway.
echo 'The following command terminates the "npm start" process using its PID'
echo '(written to ".pidfile"), all of which were conducted when "deliver.sh"'
echo 'was executed.'
set -x

kill $(cat .pidfile)
