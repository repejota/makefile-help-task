#!/usr/bin/env bats
set -e

@test "minimal test status is 0" {
    run make -f tests/Makefile.minimal
    [ "$status" -eq 0 ]
}
