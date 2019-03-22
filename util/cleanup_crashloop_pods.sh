#!/bin/bash
# DRYRUN=1 (only display what would be done)
pods=""
for data in `kubectl get po | grep CrashLoopBackOff`
do
  pod=`echo "$data" | awk '{print $1}'`
  base=${pod:0:8}
  if [ "$base" = "devstats" ]
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
