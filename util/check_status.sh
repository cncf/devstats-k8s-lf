#!/bin/bash
./list_devstats_running_pods.sh
./logs_test.sh
./logs_prod.sh
cat logs_test.txt logs_prod.txt | grep -i -E '([^[:alnum:]_]|^)(errors?|flag)([^[:alnum:]_]|$)+'
