#!/bin/bash
./k8s/cleanup_completed_pods.sh
./k8s/cleanup_pending_pods.sh
./k8s/cleanup_errored_pods.sh
./k8s/cleanup_crashloop_pods.sh
./k8s/delete_devstats_cron_jobs.sh

