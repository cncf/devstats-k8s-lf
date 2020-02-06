#!/bin/bash
if ( [ -z "$1" ] || [ -z "$2" ] )
then
  echo "$0: you need to provide all_test_projects.txt output.log arguments"
  exit 1
fi
> "$2"
pods=`LAST=1 ./list_projects_objects.sh $1 po 'devstats-' '-'`
for pod in $pods
do
  echo "pod '$pod'" >> "$2"
  kubectl logs $pod >> "$2"
done
pods=`LAST=1 ./list_projects_objects.sh $1 po 'devstats-affiliations-' '-'`
for pod in $pods
do
  echo "pod '$pod'" >> "$2"
  kubectl logs $pod | grep -v -E '\/http-errors\+' | grep -E '[eE]rror' >> "$2"
done
