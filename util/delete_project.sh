#!/bin/bash
# [NS=devstats-test]
# [OP=delete]
# [MN=0]
# [VE=1]
if [ -z "${1}" ]
then
  echo "$0: you need to specify project name as a 1st argument"
  exit 1
fi
if [ -z "${NS}" ]
then
  export NS='devstats-test'
fi
if [ -z "${OP}" ]
then
  export OP='get'
  echo "$0: to actually delete specify OP=delete"
fi
if [ -z "${MN}" ]
then
  export MN=0
fi
if [ ! -z "${VE}" ]
then
  kubectl get all -n "${NS}" | grep "${1}"
fi
kubectl "${OP}" -n "${NS}" cronjob "devstats-${1}" "devstats-affiliations-${1}"
kubectl "${OP}" -n "${NS}" deployment "devstats-grafana-${1}"
kubectl "${OP}" -n "${NS}" service "devstats-service-${1}"
kubectl exec -in "${NS}" "devstats-postgres-${MN}" -- psql "${1}" -c 'select count(*) from gha_events'
if [ "${OP}" = "delete" ]
then
  kubectl exec -in "${NS}" "devstats-postgres-${MN}" -- psql -c "drop database ${1}"
fi
