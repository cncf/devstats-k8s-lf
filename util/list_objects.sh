#!/bin/bash
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
  echo $pods
fi
