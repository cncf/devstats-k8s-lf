#!/bin/bash
echo "========== EVENTS ==========" > report.txt
kubectl get events >> report.txt
echo "========== ERRORED PODS ==========" >> report.txt
#objs=`ALL=1 ./list_pods.sh Failed`
objs=`ALL=1 ./list_pods.sh All`
for obj in $objs
do
  IFS=':'
  arr=($obj)
  unset IFS
  ns=${arr[0]}
  pod=${arr[1]}
  sts=${arr[2]}
  echo "ns: ${ns}, pod: ${pod}, state: ${sts}"
done
