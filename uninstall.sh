#!/bin/bash

set -euo pipefail
IFS=$'\n\t'

[ $USER != root ] && {
    echo "must be run as root" 1>&2
    exit 1
}

rm -vf ${DESTDIR:-}${PREFIX:-/usr}/bin/dcboost
rm -vf ${DESTDIR:-}/etc/systemd/system/dcboost.service

echo 'uninstalled successfully'
