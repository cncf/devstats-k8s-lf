#!/bin/bash
# DRYRUN=1 (only display what would be done)
# ITER=1 (delete objects one at a time, not all at once)
# RE=1 (treat 2nd argument as regexp instead of prefix)
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
pattern=$2
objs=`kubectl get $1`
pods=""
for obj in $objs
do
  if [ -z "$RE" ]
  then
    base=${obj:0:${#pattern}}
    if [ "$base" = "$pattern" ]
    then
      pods="$pods $obj"
    fi
  else
    if [[ "$obj" =~ $pattern ]]
    then
      pods="$pods $obj"
    fi
  fi
done
if [ -z "$3" ]
then
  echo "kubectl delete $1 ${pods}" >> delete_objects.log 
else
  echo "kubectl delete $1 ${pods} \"${@:3:99}\"" >> delete_objects.log
fi
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
