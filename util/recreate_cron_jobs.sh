#!/bin/sh
./util/delete_devstats_cron_jobs.sh || exit 2
helm install ./devstats-helm --set skipSecrets=1,skipPV=1,skipBootstrap=1,skipProvisions=1,skipGrafanas=1,skipServices=1 || exit 3
echo 'OK'
