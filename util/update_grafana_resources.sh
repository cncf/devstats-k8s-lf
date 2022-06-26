#!/bin/bash
#kubectl get deployment -n "${env}" "$f" -o json | jq -rS '.spec.template.spec.containers[0].resources.requests.memory'
lmem=3Gi
lcpu=1000m
mem=128Mi
cpu=50m
for env in devstats-test devstats-prod
do
  for f in $(kubectl get deployment -n "${env}" -l type=grafana -o=jsonpath='{range .items[*]}{.metadata.name}{"\n"}{end}')
  do
    curr=$(kubectl get deployment -n "${env}" "$f" -o json | jq -rS '.spec.template.spec.containers[0].resources.requests.memory')
    if [ ! "${curr}" = "${mem}" ]
    then
      kubectl patch deployment -n "${env}" "$f" -p "{\"spec\":{\"template\":{\"spec\":{\"containers\":[{\"name\":\"${f}\",\"resources\":{\"requests\":{\"memory\":\"${mem}\"}}}]}}}}"
      curr2=$(kubectl get deployment -n "${env}" "$f" -o json | jq -rS '.spec.template.spec.containers[0].resources.requests.memory')
      echo "$f: ${curr} -> ${curr2}"
    fi
    curr=$(kubectl get deployment -n "${env}" "$f" -o json | jq -rS '.spec.template.spec.containers[0].resources.requests.cpu')
    if [ ! "${curr}" = "${cpu}" ]
    then
      kubectl patch deployment -n "${env}" "$f" -p "{\"spec\":{\"template\":{\"spec\":{\"containers\":[{\"name\":\"${f}\",\"resources\":{\"requests\":{\"cpu\":\"${cpu}\"}}}]}}}}"
      curr2=$(kubectl get deployment -n "${env}" "$f" -o json | jq -rS '.spec.template.spec.containers[0].resources.requests.cpu')
      echo "$f: ${curr} -> ${curr2}"
    fi
    curr=$(kubectl get deployment -n "${env}" "$f" -o json | jq -rS '.spec.template.spec.containers[0].resources.limits.memory')
    if [ ! "${curr}" = "${lmem}" ]
    then
      kubectl patch deployment -n "${env}" "$f" -p "{\"spec\":{\"template\":{\"spec\":{\"containers\":[{\"name\":\"${f}\",\"resources\":{\"limits\":{\"memory\":\"${lmem}\"}}}]}}}}"
      curr2=$(kubectl get deployment -n "${env}" "$f" -o json | jq -rS '.spec.template.spec.containers[0].resources.limits.memory')
      echo "$f: ${curr} -> ${curr2}"
    fi
    curr=$(kubectl get deployment -n "${env}" "$f" -o json | jq -rS '.spec.template.spec.containers[0].resources.limits.cpu')
    if [ ! "${curr}" = "${lcpu}" ]
    then
      kubectl patch deployment -n "${env}" "$f" -p "{\"spec\":{\"template\":{\"spec\":{\"containers\":[{\"name\":\"${f}\",\"resources\":{\"limits\":{\"cpu\":\"${lcpu}\"}}}]}}}}"
      curr2=$(kubectl get deployment -n "${env}" "$f" -o json | jq -rS '.spec.template.spec.containers[0].resources.limits.cpu')
      echo "$f: ${curr} -> ${curr2}"
    fi
  done
done
