#!/usr/bin/env bash

# Recursively find the most recently modified file under the current directory
# for file in $(find . -type f); do
find . -type f -print0 | while read -d $'\0' file; do
  if [[ -z $(find . -type f -newer "$file") ]]; then
    echo "$file"
  fi
done
