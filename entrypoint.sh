#!/bin/sh
set -e

echo "* * * * * /usr/local/bin/script.sh " | crontab - && crond -f -L /dev/stdout 

