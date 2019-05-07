#!/bin/bash
PROJ=iovisor                ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-service.yaml || exit 2
PROJ=mininet                ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-service.yaml || exit 3
PROJ=opennetworkinglab      ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-service.yaml || exit 4
PROJ=opensecuritycontroller ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-service.yaml || exit 5
PROJ=openswitch             ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-service.yaml || exit 6
PROJ=p4lang                 ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-service.yaml || exit 7
PROJ=openbmp                ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-service.yaml || exit 8
PROJ=tungstenfabric         ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-service.yaml || exit 9
PROJ=cord                   ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-service.yaml || exit 10
PROJ=envoy                  ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-service.yaml || exit 11
PROJ=zephyr                 ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-service.yaml || exit 12
PROJ=linux                  ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-service.yaml || exit 13
PROJ=kubernetes             ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-service.yaml || exit 14
PROJ=prometheus             ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-service.yaml || exit 15
PROJ=opentracing            ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-service.yaml || exit 16
PROJ=fluentd                ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-service.yaml || exit 17
PROJ=linkerd                ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-service.yaml || exit 18
PROJ=grpc                   ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-service.yaml || exit 19
PROJ=coredns                ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-service.yaml || exit 20
PROJ=containerd             ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-service.yaml || exit 21
PROJ=rkt                    ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-service.yaml || exit 22
PROJ=cni                    ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-service.yaml || exit 23
PROJ=jaeger                 ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-service.yaml || exit 24
PROJ=notary                 ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-service.yaml || exit 25
PROJ=tuf                    ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-service.yaml || exit 26
PROJ=rook                   ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-service.yaml || exit 27
PROJ=vitess                 ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-service.yaml || exit 28
PROJ=nats                   ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-service.yaml || exit 29
PROJ=opa                    ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-service.yaml || exit 30
PROJ=spiffe                 ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-service.yaml || exit 31
PROJ=spire                  ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-service.yaml || exit 32
PROJ=cloudevents            ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-service.yaml || exit 33
PROJ=telepresence           ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-service.yaml || exit 34
PROJ=helm                   ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-service.yaml || exit 35
PROJ=openmetrics            ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-service.yaml || exit 36
PROJ=harbor                 ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-service.yaml || exit 37
PROJ=etcd                   ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-service.yaml || exit 38
PROJ=tikv                   ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-service.yaml || exit 39
PROJ=cortex                 ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-service.yaml || exit 40
PROJ=buildpacks             ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-service.yaml || exit 41
PROJ=falco                  ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-service.yaml || exit 42
PROJ=dragonfly              ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-service.yaml || exit 43
PROJ=virtualkubelet         ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-service.yaml || exit 44
PROJ=cncf                   ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-service.yaml || exit 45
PROJ=opencontainers         ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-service.yaml || exit 46
PROJ=istio                  ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-service.yaml || exit 47
PROJ=spinnaker              ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-service.yaml || exit 48
PROJ=knative                ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-service.yaml || exit 49
PROJ=kubeedge               ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-service.yaml || exit 50
PROJ=brigade                ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-service.yaml || exit 51
PROJ=crio                   ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-service.yaml || exit 52
PROJ=tekton                 ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-service.yaml || exit 53
PROJ=jenkinsx               ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-service.yaml || exit 54
PROJ=jenkins                ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-service.yaml || exit 55
PROJ=networkservicemesh     ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-service.yaml || exit 56
PROJ=openebs                ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-service.yaml || exit 57
