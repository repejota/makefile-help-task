#!/usr/bin/env bats

@test "minimal test status is 0" {
    run make -f tests/Makefile.minimal
    [ "$status" -eq 0 ]
}

@test "minimal test output" {
    expected="help:  Show this help ( default )"
    run make -f tests/Makefile.minimal
    echo -e "${expected}"
    echo -e "${lines[1]}"
    [ "${lines[1]}" = "${expected}" ]
}
