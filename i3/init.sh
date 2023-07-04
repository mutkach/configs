#!/bin/bash

lockfile -r 0 /tmp/wire.lock || exit 1

bash /home/nikita/wire.sh &
