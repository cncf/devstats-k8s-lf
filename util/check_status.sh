#!/bin/bash
df -h | grep '/var/openebs'
df -h | grep '/dev/sda'
df -h | grep '/dev/sdb'
df -ih | grep '/var/openebs'
df -ih | grep '/dev/sda'
df -ih | grep '/dev/sdb'
kubectl describe nodes | grep HasDiskPressure
kubectl describe nodes | grep HasMemoryPressure
./list_devstats_running_pods.sh
echo 'Test status:'
if [ -z "${NODRY}" ]
then
  DRY=1 ./check_patroni_health.sh test
else
  ./check_patroni_health.sh test
fi
./logs_test.sh
cat logs_test.txt | grep -i -E '([^[:alnum:]_]|^)(errors?|flag)([^[:alnum:]_]|$)+'
echo 'Prod status:'
if [ -z "${NODRY}" ]
then
  DRY=1 ./check_patroni_health.sh prod
else
  ./check_patroni_health.sh prod
fi
./logs_prod.sh
cat logs_prod.txt | grep -i -E '([^[:alnum:]_]|^)(errors?|flag)([^[:alnum:]_]|$)+'
echo '------------'
./check_calico.sh
echo 'Recent affiliations imports'
kubectl get po -A | grep affiliations | grep -E '\s+([0-9]+h([0-9]+m)?|[0-9]+m)$'
echo '------------'
