#!/bin/bash
# DRYRUN=1 (only display what would be done)
# ITER=1 (delete objects one at a time, not all at once)
if [ -z "$1" ]
then
  echo "$0: you need to provide object type as an argument, example: po, svc"
  exit 1
fi
if [ -z "$2" ]
then
  echo "$0: you need to provide object name prefix, example 'devstats-'"
  exit 1
fi
otype=$1
olen=${#2}
objs=`kubectl get $1`
pods=""
for obj in $objs
do
  base=${obj:0:$olen}
  if [ "$base" = "$2" ]
  then
    pods="$pods $obj"
  fi
done
if [ ! -z "$pods" ]
then
  if [ -z "$DRYRUN" ]
  then
    if [ -z "$ITER" ]
    then
      echo "Deleting $1: ${pods}"
      if [ -z "$3" ]
      then
        kubectl delete $1 ${pods}
      else
        kubectl delete $1 ${pods} "${@:3:99}"
      fi
    else
      for pod in $pods
      do
        echo "Deleting $1: ${pod}"
        if [ -z "$3" ]
        then
          kubectl delete $1 ${pod}
        else
          kubectl delete $1 ${pod} "${@:3:99}"
        fi
      done
    fi
  else
    echo "Would delete $1: ${pods}"
  fi
fi
