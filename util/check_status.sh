#!/bin/bash
df -h | grep '/var/openebs'
df -h | grep '/dev/sda'
df -ih | grep '/var/openebs'
df -ih | grep '/dev/sda'
kubectl describe nodes | grep HasDiskPressure
./list_devstats_running_pods.sh
echo 'Test status:'
./logs_test.sh
cat logs_test.txt | grep -i -E '([^[:alnum:]_]|^)(errors?|flag)([^[:alnum:]_]|$)+'
echo 'Prod status:'
./logs_prod.sh
cat logs_prod.txt | grep -i -E '([^[:alnum:]_]|^)(errors?|flag)([^[:alnum:]_]|$)+'
echo '------------'
./check_calico.sh
