#!/bin/bash
apt install parted
parted -a optimal /dev/nvme0n1 mklabel gpt
parted -a optimal /dev/nvme0n1 mkpart primary ext4 0% 100%
mkfs.ext4 /dev/nvme0n1
mkdir /var/openebs
mount /dev/nvme0n1 /var/openebs -t ext4
