load 'bats-assert/load.bash'

@test "assert that output contains string" {
  run echo "testing using bats 101"
  assert_output "testing using bats 101"
  assert_output --partial "101"
}
