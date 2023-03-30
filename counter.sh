#!/bin/bash

if [ $# -ne 1 ]; then
  echo "Usage: $0 file_extension"
  exit 1
fi

file_ext=$1

total_lines=0

while read -r file; do
  line_count=$(wc -l < "$file")
  echo "$file: $line_count lines"
  total_lines=$((total_lines + line_count))
done < <(find . -type f -name "*$file_ext")

echo "Total lines in all $file_ext files: $total_lines"
