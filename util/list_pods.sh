#!/bin/bash
# ALL=1 - list all namespaces
if [ -z "$1" ]
then
  echo "$0: you need to specify pod state, for example: All, Running, Succeeded, Pending, Failed"
  exit 1
fi
if [ -z "$ALL" ]
then
  objs=`kubectl get po -o=jsonpath='{range .items[*]}{.metadata.name}{";"}{.metadata.namespace}{";"}{.status.phase}{"\n"}{end}'`
else
  objs=`kubectl get po --all-namespaces -o=jsonpath='{range .items[*]}{.metadata.name}{";"}{.metadata.namespace}{";"}{.status.phase}{"\n"}{end}'`
fi
pods=""
for obj in $objs
do
  IFS=';'
  arr=($obj)
  unset IFS
  pod=${arr[0]}
  ns=${arr[1]}
  sts=${arr[2]}
  if [ "$1" = "All" ]
  then
    echo "$ns:$pod:$sts"
    continue
  fi
  if [ "$sts" = "$1" ]
  then
    pods="${pods} ${ns}:${pod}"
  fi
done
if [ ! -z "$pods" ]
then
  echo $pods
fi
