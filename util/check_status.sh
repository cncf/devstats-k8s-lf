#!/bin/bash
df -h | grep '/var/openebs'
df -h | grep '/dev/sda'
df -ih | grep '/var/openebs'
df -ih | grep '/dev/sda'
kubectl describe nodes | grep HasDiskPressure
./list_devstats_running_pods.sh
echo 'Test status:'
k exec -itn devstats-test devstats-postgres-0 -- /usr/local/bin/patronictl list | grep devstats-postgres | grep -v running
./logs_test.sh
cat logs_test.txt | grep -i -E '([^[:alnum:]_]|^)(errors?|flag)([^[:alnum:]_]|$)+'
echo 'Prod status:'
k exec -itn devstats-prod devstats-postgres-0 -- /usr/local/bin/patronictl list | grep devstats-postgres | grep -v running
./logs_prod.sh
cat logs_prod.txt | grep -i -E '([^[:alnum:]_]|^)(errors?|flag)([^[:alnum:]_]|$)+'
echo '------------'
./check_calico.sh
