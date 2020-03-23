#!/bin/sh

set -ex

cd "$(dirname "$0")"

conky -c ./conky/np -d >/dev/null
conky -c ./conky/npart -d > /dev/null
