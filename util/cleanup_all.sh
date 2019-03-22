#!/bin/bash
./util/cleanup_completed_pods.sh
./util/cleanup_pending_pods.sh
./util/cleanup_errored_pods.sh
./util/cleanup_crashloop_pods.sh
./util/delete_devstats_cron_jobs.sh

