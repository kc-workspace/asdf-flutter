#!/usr/bin/env bash

## User utility functions
## This will load on very beginning of the scripts
## so make sure that you only define functions

_kc_asdf_custom_enabled_features() {
  local feature="$1"

  ## Github latest version didn't works
  [[ "$feature" == github_latest ]] &&
    return 1

  return 0
}
