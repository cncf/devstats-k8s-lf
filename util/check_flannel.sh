#!/bin/bash
res=`kubectl get po --all-namespaces | grep flannel | grep Running`
if [ -z "$res" ]
then
  echo "flannel is not running"
  exit 1
fi
res=`kubectl get po --all-namespaces | grep flannel | grep -v Running`
if [ ! -z "$res" ]
then
  echo "some or all flannel pods are not in the running state"
  echo "$res"
  exit 2
fi
exit 0
