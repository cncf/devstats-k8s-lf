#!/bin/bash
if [ -z "$1" ]
then
  echo "$0: you need to specify apiserver advertise address"
  addr=`kubectl config view -o json | jq -r '.clusters[0].cluster.server'`
  echo "Use IP part from $addr"
  exit 1
fi
epo=`date +%s`
cp -R /etc/kubernetes/pki "/etc/kubernetes/pki.${epo}" || exit 1
kubeadm alpha certs check-expiration
for cert in `kubeadm alpha certs check-expiration | awk '{print $1}'`
do
  echo "renewing $cert"
  kubeadm alpha certs renew "$cert"
done
mkdir "${HOME}/kubernetes.${epo}"
mkdir "${HOME}/pki.${epo}"
# cd /etc/kubernetes/pki/
# mv {apiserver.crt,apiserver-etcd-client.key,apiserver-kubelet-client.crt,front-proxy-ca.crt,front-proxy-client.crt,front-proxy-client.key,front-proxy-ca.key,apiserver-kubelet-client.key,apiserver.key,apiserver-etcd-client.crt} "${HOME}/pki.${epo}"
# kubeadm init phase certs all --apiserver-advertise-address <IP>
cd /etc/kubernetes/
mv {admin.conf,controller-manager.conf,kubelet.conf,scheduler.conf} "${HOME}/kubernetes.${epo}"
kubeadm init phase kubeconfig all
echo "Now you should manually copy admin.conf to your ~/.kube/config (because it can have your custom changes - you only need to update: client-certificate-data, client-key-data"
echo "Then you need to restart master node, upload new kubelet config to all worker nodes"
# reboot
