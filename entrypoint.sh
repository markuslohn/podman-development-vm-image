#!/bin/bash

# Trigger an error if non-zero exit code is encountered
set -e 

out=$(sudo /etc/init.d/ssh start)
echo "$out"

exec "$@"