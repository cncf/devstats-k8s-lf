#!/bin/bash
# DRYRUN=1 (only display what would be done)
pods=""
for data in `kubectl get po -l name=devstats -o=jsonpath='{range .items[*]}{.metadata.name}{";"}{.status.phase}{"\n"}{end}'`
do
  IFS=';'
  arr=($data)
  unset IFS
  pod=${arr[0]}
  sts=${arr[1]}
  base=${pod:0:8}
  # echo "$data -> $pod $sts $base"
  if ( [ "$sts" = "Pending" ] && [ "$base" = "devstats" ] )
  then
    pods="${pods} ${pod}"
  fi
done
if [ ! -z "$pods" ]
then
  if [ -z "$DRYRUN" ]
  then
    echo "Deleting pods: ${pods}"
    kubectl delete pod ${pods}
  else
    echo "Would delete pods: ${pods}"
  fi
fi
