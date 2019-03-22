#!/bin/bash
# This dry-runs all manifests given, doing environment subsititution and setting TIMESTAMP to the current time with microsecond resolution
export TIMESTAMP=`date +'%s%N'`
for f in "$@"
do
  fd="${f%.*}.data"
  if [ -f "$fd" ]
  then
    echo "Applying $f $fd"
    if [ ! -z "$SLEEP" ]
    then
      export CMD='/bin/sleep'
      export ARGS="'36000'"
    else
      d=`cat "$fd"`
      a=($d)
      export CMD=${a[0]}
      a=("${a[@]:1}")
      export ARGS=${a[@]}
    fi
  else
    echo "Applying $f"
  fi
  rm -f error.yaml
  cat "$f" | envsubst
  cat "$f" | envsubst | kubectl apply --dry-run -f - || cat "$f" | envsubst > error.yaml
  if [ -f "error.yaml" ]
  then
    echo "$0: cannot apply $f, please examine error.yaml file"
    exit 1
  fi
done
