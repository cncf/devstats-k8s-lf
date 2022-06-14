#!/bin/bash
df -h | grep '/var/openebs'
df -h | grep '/dev/sda'
df -ih | grep '/var/openebs'
df -ih | grep '/dev/sda'
kubectl describe nodes | grep HasDiskPressure
kubectl describe nodes | grep HasMemoryPressure
./list_devstats_running_pods.sh
echo 'Test status:'
./check_patroni_health.sh test
./logs_test.sh
cat logs_test.txt | grep -i -E '([^[:alnum:]_]|^)(errors?|flag)([^[:alnum:]_]|$)+'
echo 'Prod status:'
./check_patroni_health.sh prod
./logs_prod.sh
cat logs_prod.txt | grep -i -E '([^[:alnum:]_]|^)(errors?|flag)([^[:alnum:]_]|$)+'
echo '------------'
./check_calico.sh
echo 'Recent affiliations imports'
kubectl get po -A | grep affiliations | grep -E '\s+[0-9]+h([0-9]+m)?$'
echo '------------'
