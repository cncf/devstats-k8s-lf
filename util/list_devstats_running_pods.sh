#!/bin/bash
kubectl get po --all-namespaces | grep Running | grep -v devstats-grafana | grep 'devstats-test\|devstats-prod' | grep -v 'devstats-postgres\|devstats-static\|nginx'
kubectl get po --all-namespaces | grep 'Error\|Crash\|Loop\|Creating\|Pending'
