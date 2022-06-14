#!/bin/bash
if [ -z "$1" ]
then
  echo "$0: you need to specify env: test or prod"
  exit 1
fi
# kubectl exec -itn devstats-$1 devstats-postgres-0 -- /usr/local/bin/patronictl list | grep devstats-postgres | grep -v running | grep -v Cluster
# kubectl exec -itn devstats-$1 devstats-postgres-0 -- /usr/local/bin/patronictl list | grep devstats-postgres | grep -E '[[:digit:]]{4,}' | grep -v Cluster
# Check if we need to reinit lagging replica
r=$(kubectl exec -itn devstats-${1} devstats-postgres-0 -- patronictl list -f json | jq --compact-output -rS)
s0=$(echo -n "${r}" | jq -r '.[0].State')
s1=$(echo -n "${r}" | jq -r '.[1].State')
s2=$(echo -n "${r}" | jq -r '.[2].State')
s3=$(echo -n "${r}" | jq -r '.[3].State')
s="${s0},${s1},${s2},${s3}"
reinit=""
reinits=""
other=""
for n in 0 1 2 3
do
  v="s${n}"
  if [ "${!v}" != "running" ]
  then
    data=$(echo -n "${r}" | jq -rS ".[${n}]")
    state=$(echo -n "${r}" | jq -rS ".[${n}].State")
    if ( [ "${state}" = "stopping" ] || [ "${state}" = "creating replica" ] )
    then
      echo "Node #${n} state: ${state}"
      if [ "${state}" = "creating replica" ]
      then
        other=${n}
      fi
    else
      echo "Node #${n} is not running: ${data}"
      exit 0
    fi
  fi
  rol=$(echo -n "${r}" | jq -r ".[${n}].Role")
  if [ ! "${rol}" = "Replica" ]
  then
    continue
  fi
  lag=$(echo -n "${r}" | jq -r ".[${n}].\"Lag in MB\"")
  if (( ${lag} > 2048 ))
  then
    echo "Node #${n} lags more than 2 Gb: ${lag} MB"
    if (( ${lag} > 20480 ))
    then
      echo "Node #${n} lags more than 20 Gb, scheduling reinit if all other nodes healthy"
      if [ -z "${reinit}" ]
      then
        reinit=${n}
      fi
      if [ -z "${reinits}" ]
      then
        reinits=${n}
      else
        reinits="${reinits},${n}"
      fi
    fi
  fi
done
if [ ! -z "${reinit}" ]
then
  if [ "$s" = "running,running,running,running" ]
  then
    echo "Detected reinit condition for Node #${reinit}, all reinits needed: ${reinits}"
    echo "kubectl exec -itn devstats-${1} devstats-postgres-0 -- patronictl reinit devstats-postgres devstats-postgres-${reinit} --force"
    kubectl exec -itn devstats-${1} devstats-postgres-0 -- patronictl reinit devstats-postgres devstats-postgres-${reinit} --force
  else
    echo "Nodes ${reinits} need to be reinitialized, but other replica ${other} reinitialize is in progress"
  fi
fi
