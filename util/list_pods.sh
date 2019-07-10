#!/bin/bash
# ALL=1 - list all namespaces
# NOT=1 - list pods which state doesn't match the requested state
if [ -z "$1" ]
then
  echo "$0: you need to specify pod state, for example: All, Running, Completed, Pending, Error, ImagePullBackOff, CrashLoopBackOff, ContainerCreating"
  exit 1
fi
if [ -z "$ALL" ]
then
  objs=`kubectl get pods`
else
  objs=`kubectl get pods --all-namespaces`
fi
# obj: NAMESPACE
# obj: NAME
# obj: READY
# obj: STATUS
# obj: RESTARTS
# obj: AGE
pods=""
col=0
for obj in $objs
do
  if [ "$col" = "0" ]
  then
    if [ -z "$ALL" ]
    then
      ns=`kubectl config view --minify --output 'jsonpath={..namespace}'`
      if [ -z "$ns" ]
      then
        ns="default"
      fi
      col=1
    else
      ns=$obj
    fi
  fi
  if [ "$col" = "1" ]
  then
    pod=$obj
  fi
  if [ "$col" = "3" ]
  then
    sts=$obj
  fi
  col=$((col+1))
  if [ "$col" = "6" ]
  then
    if [ -z "$NOT" ]
    then
      if ( [ "$1" = "All" ] || [ "$sts" = "$1" ] )
      then
        pods="${pods} ${ns}:${pod}:${sts}"
      fi
    else
      if ( [ "$1" = "All" ] || [ ! "$sts" = "$1" ] )
      then
        pods="${pods} ${ns}:${pod}:${sts}"
      fi
    fi
    col=0
  fi
done
if [ ! -z "$pods" ]
then
  echo $pods
fi
