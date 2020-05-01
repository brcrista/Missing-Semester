#!/usr/bin/env sh

echo "Find the number of words in /usr/share/dict/words that contain at least three a's and don't have an 's ending."
three_as=$(cat /usr/share/dict/words \
| tr "[:upper:]" "[:lower:]" \
| grep -E ".*a.*a.*a.*[^'][^s]$")

echo "$three_as" | wc -l

echo
echo "What are the three most common last two letters of those words?"
echo "$three_as" \
| sed -E "s/^.*(..)$/\1/g" \
| sort \
| uniq -c \
| sort -nr \
| head -n 3

echo
echo "How many of those two-letter combinations are there?"
# Assume Latin alphabet (no loan words, such as fiancée)
echo {a..z}{a..z} | wc -w # == 26 * 26
