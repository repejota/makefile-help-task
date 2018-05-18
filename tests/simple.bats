#!/usr/bin/env bats

@test "simple test status is 0" {
    run make -f tests/Makefile.simple
    [ "$status" -eq 0 ]
}

@test "minimal test output" {
    expected="help:  Show this help ( default )"  
    run make -f tests/Makefile.minimal
    [ "$output" = "$expected" ]
}
