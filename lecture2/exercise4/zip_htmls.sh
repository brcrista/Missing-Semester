#!/usr/bin/env sh

# Recursively finds all .html files under the current directory
# and zips them into a file named `htmls.zip`
find . -name "*.html" -print0 | xargs -0 zip htmls.zip
