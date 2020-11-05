#!/bin/bash
if [ -z "$1" ]
then
  en=prod
else
  en=$1
fi
k -n "devstats-${en}" -l type=postgres logs -f --tail=100
