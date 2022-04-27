#!/bin/bash
for f in $(crictl -r /run/containerd/containerd.sock ps -a | grep -v ' Running ' | grep -v 'CONTAINER ID ' | awk '{print $2}' | uniq)
do
  crictl -r /run/containerd/containerd.sock rmi "$f"
done
