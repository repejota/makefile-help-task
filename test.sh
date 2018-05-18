#!/bin/bash 

set -e

# simple
EXPECTED="help:*"
OUTPUT="$(make -f tests/Makefile.simple)"

if [[ ${OUTPUT} != ${EXPECTED} ]]; then
    echo "FAIL simple: expected: '${EXPECTED}' but got: '${OUTPUT}'"
fi

