#!/bin/bash

set -euo pipefail
IFS=$'\n\t'

[ $USER != root ] && {
    echo "must be run as root" 1>&2
    exit 1
}

install -Dvm 755 dcboost         ${DESTDIR:-}${PREFIX:-/usr}/bin/dcboost
install -Dvm 755 dcboost.service ${DESTDIR:-}/etc/systemd/system/dcboost.service

id dcboost 2>&1 >/dev/null || useradd dcboost

echo 'installed successfully'
