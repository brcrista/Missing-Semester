#!/usr/bin/env bash

# Find the number of words in /usr/share/dict words that contain at least three a's and don't have an 's ending.
cat /usr/share/dict/words \
| tr "[:upper:]" "[:lower:]" \
| egrep ".*a.*a.*a.*[^'][^s]$" \
| sed -E "s/^.*(..)$/\1/g" \
| sort \
| uniq -c \
| sort -nr \
| head -n 3
