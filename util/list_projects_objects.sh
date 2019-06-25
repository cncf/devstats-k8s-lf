#!/bin/bash
# LAST=1 - display only last objects listed per each project
if ( [ -z "$1" ] || [ -z "$2" ] || [ -z "$3" ] )
then
  echo "$0: you need to provide args projects_file.txt object_type prefix [suffix]"
  echo "Example LAST=1 $0 all_test_projects.txt pod 'devstats-'"
  exit 1
fi
objs=`kubectl get $2`
pods=""
lasts=""
for proj in `cat "$1"`
do
  pod="${3}${proj}${4}"
  olen=${#pod}
  last=""
  for obj in $objs
  do
    base=${obj:0:$olen}
    if [ "$base" = "$pod" ]
    then
      pods="$pods $obj"
      last="$obj"
    fi
  done
  if [ ! -z "$last" ]
  then
    lasts="$lasts $last"
  fi
done
if [ -z "$LAST" ]
then
  echo "$pods"
else
  echo "$lasts"
fi
