#!/bin/bash
#swapoff -a
mount /dev/nvme0n1 /var/openebs -t ext4
docker system prune -f
#service kubelet restart
