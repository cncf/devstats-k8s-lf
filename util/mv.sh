#!/bin/bash
if [ -z "$1" ]
then
  echo "$0: argument required"
  exit 1
fi
for f in "$@"
do
  echo "$f"
  cp -R "$f" "/data/$f" && rm -rf "$f" && ln -s "/data/$f" "$f" && echo "$f moved & linked"
done
