#!/bin/bash
if [ -z "$1" ]
then
  echo "$0: please specify env as a 1st arg: test or prod"
  exit 1
fi
kubectl exec -itn "devstats-${1}" devstats-postgres-0 -- patronictl show-config
for param in checkpoint_completion_target default_statistics_target effective_cache_size effective_io_concurrency hot_standby idle_in_transaction_session_timeout maintenance_work_mem max_connections max_parallel_workers max_parallel_workers_per_gather max_replication_slots max_wal_senders max_wal_size max_worker_processes min_wal_size random_page_cost shared_buffers temp_file_limit wal_buffers wal_keep_segments wal_level wal_log_hints
do
  echo -n "${param} -> "
  kubectl exec -itn "devstats-${1}" devstats-postgres-0 -- psql -tAc "show ${param}" 2>/dev/null
done
# Note that wal_keep_segments is valid in psql11 but not in psql13
echo 'Other WAL params (Postgres 11):'
for param in wal_block_size wal_compression wal_receiver_timeout wal_segment_size wal_sync_method wal_writer_flush_after wal_consistency_checking wal_receiver_status_interval wal_retrieve_retry_interval wal_sender_timeout wal_writer_delay
do
  echo -n "${param} -> "
  kubectl exec -itn "devstats-${1}" devstats-postgres-0 -- psql -tAc "show ${param}" 2>/dev/null
done
echo 'Other WAL params (Postgres 13):'
for param in wal_skip_threshold wal_init_zero wal_keep_size wal_receiver_create_temp_slot wal_recycle
do
  echo -n "${param} -> "
  kubectl exec -itn "devstats-${1}" devstats-postgres-0 -- psql -tAc "show ${param}" 2>/dev/null
done
