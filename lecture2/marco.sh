#!/usr/bin/env bash

saved_directory=

marco() {
  saved_directory=$(pwd)
}

polo() {
  if [[ $saved_directory ]]; then
    cd "$saved_directory"
  fi
}
