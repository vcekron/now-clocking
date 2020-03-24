#!/bin/bash

set -ex

cd "$(dirname "$0")"

conky -q -c ./conky/np -d &>/dev/null
conky -q -c ./conky/npart -d &> /dev/null
