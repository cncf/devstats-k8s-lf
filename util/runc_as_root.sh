#!/bin/bash
if [ -z "${1}" ]
then
  echo "$0: you need to specify runc container ID as a 1st argument"
  exit 1
fi
cmd="bash"
if [ ! -z "${2}" ]
then
  cmd="${2}"
fi
runc --root /run/containerd/runc/k8s.io/ exec -t -u 0 "${1}" "${cmd}"
