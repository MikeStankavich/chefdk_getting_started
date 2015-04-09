#!/usr/bin/env bats

@test "psql is found in PATH" {
  run which psql
  [ "$status" -eq 0 ]
}

@test "postgres process is visible " {
  result=$(ps aux | grep bin.postgres | wc -l)
  [ "$result" -gt 0 ]
}

@test "check that postgres version number returns a n.n type value" {
  result=$(sudo sudo -u postgres psql -c "SHOW SERVER_VERSION" | grep -o '[0-9]*\.[0-9]*' | head -1)
  [[ $result == *[0-9]"."[0-9]* ]]
}