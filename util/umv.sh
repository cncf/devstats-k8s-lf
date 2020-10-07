#!/bin/bash
if [ -z "$1" ]
then
  echo "$0: argument required"
  exit 1
fi
for f in "$@"
do
  echo "$f"
  mv "/data/$f" "${f}.tmp" && rm -f "$f" && mv "${f}.tmp" "$f" && echo "$f moved and unlinked"
done
