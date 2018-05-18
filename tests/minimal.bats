#!/usr/bin/env bats

@test "minimal test status is 0" {
    run make --no-print-directory -f tests/Makefile.minimal
    [ "$status" -eq 0 ]
}

@test "minimal test output" {
    expected="help:   Show this help ( default )"
    run make --no-print-directory -f tests/Makefile.minimal
    echo -e "Expected : ${expected}"
    echo -e "Output   : ${output}"
    [ "${output}" = "${expected}" ]
}
