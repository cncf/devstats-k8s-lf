#!/bin/bash
echo "========== EVENTS ==========" > report.txt
kubectl get events >> report.txt
echo "========== ERRORED PODS ==========" >> report.txt
objs=`ALL=1 ./list_pods.sh Error`
for obj in $objs
do
  IFS=':'
  arr=($obj)
  unset IFS
  ns=${arr[0]}
  pod=${arr[1]}
  sts=${arr[2]}
  echo "===== namespace: $ns, pod: $pod =====" >> report.txt
  kubectl -n "$ns" logs "$pod" --all-containers | tail -n 100 >> report.txt
done
