#!/usr/bin/env bats


@test "contains swagger" {
  run docker run --rm  $IMAGE version
  [ "$status" -eq 0 ]
}