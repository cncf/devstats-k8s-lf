#!/bin/bash
./list_devstats_running_pods.sh
./logs_test.sh
./logs_prod.sh
echo 'Test status:'
cat logs_test.txt | grep -i -E '([^[:alnum:]_]|^)(errors?|flag)([^[:alnum:]_]|$)+'
echo '------------'
cat logs_prod.txt | grep -i -E '([^[:alnum:]_]|^)(errors?|flag)([^[:alnum:]_]|$)+'
echo 'Test status:'
echo '------------'
