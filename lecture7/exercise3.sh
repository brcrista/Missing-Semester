#!/bin/bash
## Example: a typical script with several problems
for f in *.m3u
do
    [[ -e "$f" ]] || break
    grep -eqi "hq.*\.mp3" "$f" \
        && echo "Playlist $f contains a HQ file in mp3 format"
done
