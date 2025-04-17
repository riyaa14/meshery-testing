setup() {
   load 'bats-file/load.bash'
}

teardown () {
    rm -rf "$HOME/test-dir"
}

@test "check file and folder creation" {
  mkdir -p "$HOME/test-dir"
  touch "$HOME/test-dir/test.txt"

  assert_dir_exist "$HOME/test-dir"
  assert_file_exist "$HOME/test-dir/test.txt"
}

