#!/usr/bin/env bats

@test "simple test status is 0" {
    run make --no-print-directory -f tests/Makefile.simple
    [ "$status" -eq 0 ]
}

