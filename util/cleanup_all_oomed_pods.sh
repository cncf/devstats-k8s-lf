#!/bin/bash
for d in `k get po --all-namespaces | grep OOMKill | awk '{print $1";;;"$2}'`
do
  cmd="kubectl delete po -n ${d/;;;/ }"
  echo "$cmd"
  eval $cmd
done
