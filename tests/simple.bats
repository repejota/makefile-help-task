#!/usr/bin/env bats

@test "simple test status is 0" {
    run make -f tests/Makefile.simple
    [ "$status" -eq 0 ]
}

