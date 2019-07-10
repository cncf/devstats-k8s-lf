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
  echo "===== namespace: $ns, pod: $pod, status: $sts =====" >> report.txt
  echo "===== describe =====" >> report.txt
  kubectl -n "$ns" describe pod "$pod"  >> report.txt
  echo "===== logs =====" >> report.txt
  kubectl -n "$ns" logs "$pod" --all-containers | tail -n 100 >> report.txt
done

echo "========== CRASH LOOP BACK OFF PODS ==========" >> report.txt
objs=`ALL=1 ./list_pods.sh CrashLoopBackOff`
for obj in $objs
do
  IFS=':'
  arr=($obj)
  unset IFS
  ns=${arr[0]}
  pod=${arr[1]}
  sts=${arr[2]}
  echo "===== namespace: $ns, pod: $pod, status: $sts =====" >> report.txt
  echo "===== describe =====" >> report.txt
  kubectl -n "$ns" describe pod "$pod" >> report.txt
  echo "===== logs =====" >> report.txt
  kubectl -n "$ns" logs "$pod" --all-containers | tail -n 100 >> report.txt
done

echo "========== ImagePullBackOff PODS ==========" >> report.txt
objs=`ALL=1 ./list_pods.sh ImagePullBackOff`
for obj in $objs
do
  IFS=':'
  arr=($obj)
  unset IFS
  ns=${arr[0]}
  pod=${arr[1]}
  sts=${arr[2]}
  echo "===== namespace: $ns, pod: $pod, status: $sts =====" >> report.txt
  echo "===== describe =====" >> report.txt
  kubectl -n "$ns" describe pod "$pod" >> report.txt
  echo "===== logs =====" >> report.txt
  kubectl -n "$ns" logs "$pod" --all-containers | tail -n 100 >> report.txt
done

echo "========== CONTAINER CREATING PODS ==========" >> report.txt
objs=`ALL=1 ./list_pods.sh ContainerCreating`
for obj in $objs
do
  IFS=':'
  arr=($obj)
  unset IFS
  ns=${arr[0]}
  pod=${arr[1]}
  sts=${arr[2]}
  echo "===== namespace: $ns, pod: $pod, status: $sts =====" >> report.txt
  echo "===== describe =====" >> report.txt
  kubectl -n "$ns" describe pod "$pod" >> report.txt
  echo "===== logs =====" >> report.txt
  kubectl -n "$ns" logs "$pod" --all-containers | tail -n 100 >> report.txt
done

echo "========== PENDING PODS ==========" >> report.txt
objs=`ALL=1 ./list_pods.sh Pending`
for obj in $objs
do
  IFS=':'
  arr=($obj)
  unset IFS
  ns=${arr[0]}
  pod=${arr[1]}
  sts=${arr[2]}
  echo "===== namespace: $ns, pod: $pod, status: $sts =====" >> report.txt
  echo "===== describe =====" >> report.txt
  kubectl -n "$ns" describe pod "$pod" >> report.txt
  echo "===== logs =====" >> report.txt
  kubectl -n "$ns" logs "$pod" --all-containers | tail -n 100 >> report.txt
done
