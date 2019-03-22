#!/bin/bash
# DRYRUN=1 (only display what would be done)
cjobs=""
for job in `kubectl get cronjobs -l name=devstats -o=jsonpath='{range .items[*]}{.metadata.name}{"\n"}{end}'`
do
  base=${job:0:9}
  # echo "$base"
  if [ "$base" = "devstats-" ]
  then
    cjobs="${cjobs} ${job}"
  fi
done
if [ ! -z "$cjobs" ]
then
  if [ -z "$DRYRUN" ]
  then
    echo "Deleting cron jobs: ${cjobs}"
    kubectl delete cronjob ${cjobs}
  else
    echo "Would delete cronjobs: ${cjobs}"
  fi
fi
