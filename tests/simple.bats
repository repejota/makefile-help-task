#!/usr/bin/env bats

@test "simple test status is 0" {
    run make --no-print-directory -f tests/Makefile.simple
    [ "$status" -eq 0 ]
}

@test "simple test output" {
    run make --no-print-directory -f tests/Makefile.simple
    echo -e "Output   : ${output}"
    expected="install:   Install app"
    [ "${lines[0]}" == "${expected}" ]
    expected="help:   Show this help ( default )"
    [ "${lines[1]}" == "${expected}" ]
}
