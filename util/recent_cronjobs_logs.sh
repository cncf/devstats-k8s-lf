#!/bin/bash
if [ -z "$1" ]
then
  echo "$0: you need to provide all_test_projects.txt file"
  exit 1
fi
pods=`LAST=1 ./list_projects_objects.sh $1 po 'devstats-'`
for pod in $pods
do
  echo "pod: $pod"
done
