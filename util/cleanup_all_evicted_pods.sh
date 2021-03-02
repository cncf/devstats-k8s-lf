#!/bin/bash
for d in `kubectl get po --all-namespaces | grep Evicted | awk '{print $1";;;"$2}'`
do
  cmd="kubectl delete po -n ${d/;;;/ }"
  echo "$cmd"
  eval $cmd
done
