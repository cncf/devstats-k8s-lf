#!/bin/bash
if [ -z "$1" ]
then
  echo "$0: please specify env as a 1st arg: test or prod"
  exit 1
fi
for param in checkpoint_completion_target effective_cache_size hot_standby maintenance_work_mem max_connections max_parallel_workers max_parallel_workers_per_gather max_replication_slots max_wal_senders max_wal_size max_worker_processes shared_buffers temp_file_limit wal_buffers wal_keep_segments wal_level wal_log_hints
do
  echo -n "${param} -> "
  k exec -itn "devstats-${1}" devstats-postgres-0 -- psql -tAc "show ${param}"
done
echo 'Other WAL params:'
for param in wal_block_size wal_compression wal_keep_segments wal_log_hints wal_receiver_timeout wal_segment_size wal_sync_method wal_writer_flush_after wal_buffers wal_consistency_checking wal_level wal_receiver_status_interval wal_retrieve_retry_interval wal_sender_timeout wal_writer_delay
do
  echo -n "${param} -> "
  k exec -itn "devstats-${1}" devstats-postgres-0 -- psql -tAc "show ${param}"
done
