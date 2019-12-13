#!/bin/bash
function context {
  ./switch_context.sh "$context" 1>/dev/null 2>/dev/null
}
context=`./current_context.sh`
trap context EXIT;
./switch_context.sh test 1>/dev/null 2>/dev/null
./recent_cronjobs_logs.sh ../../devstats-docker-images/devstats-helm/all_test_projects.txt logs_test.txt
