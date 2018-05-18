#!/usr/bin/env bats

@test "dummy test" {
    result="$(echo dummy test)"
    [ "$result" == "dummy test" ]
}
