#!/bin/bash
kubectl get po -A | grep -v '\-grafana-' | grep -v '\-api-' | grep -v postgres | grep -v ingress | grep -v static | grep -v reinit | grep -v fix | grep -v provision | grep -E 'devstats-(test|prod)' | grep Running
