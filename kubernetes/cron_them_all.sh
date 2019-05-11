#!/bin/bash
ONLY=iovisor                CRON='6 * * * *'  ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-hourly-sync.yaml || exit 2
ONLY=mininet                CRON='7 * * * *'  ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-hourly-sync.yaml || exit 3
ONLY=opennetworkinglab      CRON='8 * * * *'  ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-hourly-sync.yaml || exit 4
ONLY=opensecuritycontroller CRON='9 * * * *'  ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-hourly-sync.yaml || exit 5
ONLY=openswitch             CRON='10 * * * *' ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-hourly-sync.yaml || exit 6
ONLY=p4lang                 CRON='11 * * * *' ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-hourly-sync.yaml || exit 7
ONLY=openbmp                CRON='12 * * * *' ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-hourly-sync.yaml || exit 8
ONLY=tungstenfabric         CRON='13 * * * *' ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-hourly-sync.yaml || exit 9
ONLY=cord                   CRON='14 * * * *' ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-hourly-sync.yaml || exit 10
ONLY=envoy                  CRON='15 * * * *' ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-hourly-sync.yaml || exit 11
ONLY=zephyr                 CRON='16 * * * *' ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-hourly-sync.yaml || exit 12
ONLY=linux                  CRON='17 * * * *' ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-hourly-sync.yaml || exit 13
ONLY=kubernetes             CRON='18 * * * *' ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-hourly-sync.yaml || exit 14
ONLY=prometheus             CRON='19 * * * *' ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-hourly-sync.yaml || exit 15
ONLY=opentracing            CRON='20 * * * *' ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-hourly-sync.yaml || exit 16
ONLY=fluentd                CRON='21 * * * *' ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-hourly-sync.yaml || exit 17
ONLY=linkerd                CRON='22 * * * *' ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-hourly-sync.yaml || exit 18
ONLY=grpc                   CRON='23 * * * *' ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-hourly-sync.yaml || exit 19
ONLY=coredns                CRON='24 * * * *' ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-hourly-sync.yaml || exit 20
ONLY=containerd             CRON='25 * * * *' ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-hourly-sync.yaml || exit 21
ONLY=rkt                    CRON='26 * * * *' ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-hourly-sync.yaml || exit 22
ONLY=cni                    CRON='27 * * * *' ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-hourly-sync.yaml || exit 23
ONLY=jaeger                 CRON='28 * * * *' ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-hourly-sync.yaml || exit 24
ONLY=notary                 CRON='29 * * * *' ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-hourly-sync.yaml || exit 25
ONLY=tuf                    CRON='30 * * * *' ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-hourly-sync.yaml || exit 26
ONLY=rook                   CRON='31 * * * *' ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-hourly-sync.yaml || exit 27
ONLY=vitess                 CRON='32 * * * *' ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-hourly-sync.yaml || exit 28
ONLY=nats                   CRON='33 * * * *' ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-hourly-sync.yaml || exit 29
ONLY=opa                    CRON='34 * * * *' ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-hourly-sync.yaml || exit 30
ONLY=spiffe                 CRON='35 * * * *' ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-hourly-sync.yaml || exit 31
ONLY=spire                  CRON='36 * * * *' ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-hourly-sync.yaml || exit 32
ONLY=cloudevents            CRON='37 * * * *' ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-hourly-sync.yaml || exit 33
ONLY=telepresence           CRON='38 * * * *' ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-hourly-sync.yaml || exit 34
ONLY=helm                   CRON='39 * * * *' ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-hourly-sync.yaml || exit 35
ONLY=openmetrics            CRON='40 * * * *' ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-hourly-sync.yaml || exit 36
ONLY=harbor                 CRON='41 * * * *' ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-hourly-sync.yaml || exit 37
ONLY=etcd                   CRON='42 * * * *' ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-hourly-sync.yaml || exit 38
ONLY=tikv                   CRON='43 * * * *' ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-hourly-sync.yaml || exit 39
ONLY=cortex                 CRON='44 * * * *' ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-hourly-sync.yaml || exit 40
ONLY=buildpacks             CRON='45 * * * *' ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-hourly-sync.yaml || exit 41
ONLY=falco                  CRON='46 * * * *' ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-hourly-sync.yaml || exit 42
ONLY=dragonfly              CRON='47 * * * *' ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-hourly-sync.yaml || exit 43
ONLY=virtualkubelet         CRON='48 * * * *' ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-hourly-sync.yaml || exit 44
ONLY=cncf                   CRON='49 * * * *' ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-hourly-sync.yaml || exit 45
ONLY=opencontainers         CRON='50 * * * *' ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-hourly-sync.yaml || exit 46
ONLY=istio                  CRON='51 * * * *' ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-hourly-sync.yaml || exit 47
ONLY=spinnaker              CRON='52 * * * *' ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-hourly-sync.yaml || exit 48
ONLY=knative                CRON='53 * * * *' ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-hourly-sync.yaml || exit 49
ONLY=kubeedge               CRON='54 * * * *' ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-hourly-sync.yaml || exit 50
ONLY=brigade                CRON='55 * * * *' ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-hourly-sync.yaml || exit 51
ONLY=crio                   CRON='56 * * * *' ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-hourly-sync.yaml || exit 52
ONLY=tekton                 CRON='57 * * * *' ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-hourly-sync.yaml || exit 53
ONLY=jenkinsx               CRON='58 * * * *' ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-hourly-sync.yaml || exit 54
ONLY=jenkins                CRON='59 * * * *' ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-hourly-sync.yaml || exit 55
ONLY=networkservicemesh     CRON='6 * * * *'  ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-hourly-sync.yaml || exit 56
ONLY=openebs                CRON='7 * * * *'  ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-hourly-sync.yaml || exit 57
ONLY=opentelemetry          CRON='8 * * * *'  ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-hourly-sync.yaml || exit 58
ONLY=graphql                CRON='9 * * * *'  ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-hourly-sync.yaml || exit 59
ONLY=graphqljs              CRON='10 * * * *' ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-hourly-sync.yaml || exit 60
ONLY=graphiql               CRON='11 * * * *' ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-hourly-sync.yaml || exit 61
ONLY=graphqlspec            CRON='12 * * * *' ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-hourly-sync.yaml || exit 62
ONLY=expressgraphql         CRON='13 * * * *' ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-hourly-sync.yaml || exit 63
