#!/bin/bash
kubectl delete secret pg-db
kubectl delete secret es-db
kubectl delete secret github-oauth
kubectl delete secret grafana-secret
kubectl create secret generic pg-db --from-file=./kubernetes/secrets/PG_HOST.secret --from-file=./kubernetes/secrets/PG_PASS.secret --from-file=./kubernetes/secrets/PG_PASS_RO.secret --from-file=./kubernetes/secrets/PG_PASS_TEAM.secret --from-file=./kubernetes/secrets/PG_PORT.secret --from-file=./kubernetes/secrets/PG_ADMIN_USER.secret
kubectl create secret generic es-db --from-file=./kubernetes/secrets/GHA2DB_ES_URL.secret --from-file=./kubernetes/secrets/ES_PROTO.secret --from-file=./kubernetes/secrets/ES_HOST.secret --from-file=./kubernetes/secrets/ES_PORT.secret
kubectl create secret generic github-oauth --from-file=./kubernetes/secrets/GHA2DB_GITHUB_OAUTH.secret
kubectl create secret generic grafana-secret --from-file=./kubernetes/secrets/GF_SECURITY_ADMIN_PASSWORD.secret --from-file=./kubernetes/secrets/GF_SECURITY_ADMIN_USER.secret
