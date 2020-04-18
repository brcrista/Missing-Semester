#!/bin/bash

echo "Starting program at $(date)." # Date will be substituted
echo "Running program $0 with $# arguments and PID $$."

for file in "$@"; do
    # We redirect STDOUT and STDERR to a null register since we don't need them
    grep foobar "$file" > /dev/null 2> /dev/null


    # When the pattern isn't found, grep exits with status 1
    if [[ "$?" -ne 0 ]]; then
        echo "File $file does not have the pattern 'foobar'. Adding one."
        echo "# foobar" >> "$file"
    fi
done
