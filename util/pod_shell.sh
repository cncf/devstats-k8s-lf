#!/bin/bash
if [ -z "$1" ]
then
  echo "$0: you need to pass a pod name as an argument"
  exit 2
fi
kubectl exec -it "$1" -- /bin/bash
