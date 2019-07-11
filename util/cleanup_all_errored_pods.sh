#!/bin/bash
# DRYRUN=1 (only display what would be done)
pods=""
for data in `kubectl get po -o=jsonpath='{range .items[*]}{.metadata.namespace}{";"}{.metadata.name}{";"}{.status.phase}{"\n"}{end}' --all-namespaces`
do
  IFS=';'
  arr=($data)
  unset IFS
  ns=${arr[0]}
  pod=${arr[1]}
  sts=${arr[2]}
  if [ "$sts" = "Failed" ]
  then
    pods="${pods} ${ns}:${pod}"
  fi
done
if [ ! -z "$pods" ]
then
  if [ -z "$DRYRUN" ]
  then
    echo "Deleting pods: ${pods}"
    for data in $pods
    do
      IFS=':'
      arr=($data)
      unset IFS
      ns=${arr[0]}
      pod=${arr[1]}
      kubectl delete po -n "$ns" "$pod"
    done
  else
    echo "Would delete pods: ${pods}"
  fi
fi
