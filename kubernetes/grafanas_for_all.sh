#!/bin/bash
# ARTWORK
ICON=cncf               ORGNAME='IO Visor'                   PROJ=iovisor                PROJDB=iovisor                ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-grafana.yaml || exit 4
ICON=cncf               ORGNAME='Mininet'                    PROJ=mininet                PROJDB=mininet                ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-grafana.yaml || exit 5
ICON=cncf               ORGNAME='Open Networking Laboratory' PROJ=opennetworkinglab      PROJDB=opennetworkinglab      ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-grafana.yaml || exit 6
ICON=cncf               ORGNAME='Open Security Controller'   PROJ=opensecuritycontroller PROJDB=opensecuritycontroller ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-grafana.yaml || exit 7
ICON=cncf               ORGNAME='OpenSwitch'                 PROJ=openswitch             PROJDB=openswitch             ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-grafana.yaml || exit 8
ICON=cncf               ORGNAME='P4 Language'                PROJ=p4lang                 PROJDB=p4lang                 ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-grafana.yaml || exit 9
ICON=cncf               ORGNAME='OpenBMP'                    PROJ=openbmp                PROJDB=openbmp                ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-grafana.yaml || exit 10
ICON=cncf               ORGNAME='Tungsten Fabric'            PROJ=tungstenfabric         PROJDB=tungstenfabric         ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-grafana.yaml || exit 11
ICON=cncf               ORGNAME='CORD'                       PROJ=cord                   PROJDB=cord                   ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-grafana.yaml || exit 12
ICON=envoy              ORGNAME='Envoy'                      PROJ=envoy                  PROJDB=envoy                  ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-grafana.yaml || exit 13
ICON=cncf               ORGNAME='Zephyr'                     PROJ=zephyr                 PROJDB=zephyr                 ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-grafana.yaml || exit 14
ICON=cncf               ORGNAME='Linux'                      PROJ=linux                  PROJDB=linux                  ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-grafana.yaml || exit 15
ICON=k8s                ORGNAME='Kubernetes'                 PROJ=kubernetes             PROJDB=gha                    ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-grafana.yaml || exit 16
ICON=prometheus         ORGNAME='Prometheus'                 PROJ=prometheus             PROJDB=prometheus             ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-grafana.yaml || exit 17
ICON=opentracing        ORGNAME='OpenTracing'                PROJ=opentracing            PROJDB=opentracing            ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-grafana.yaml || exit 18
ICON=fluentd            ORGNAME='Fluentd'                    PROJ=fluentd                PROJDB=fluentd                ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-grafana.yaml || exit 19
ICON=linkerd            ORGNAME='Linkerd'                    PROJ=linkerd                PROJDB=linkerd                ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-grafana.yaml || exit 20
ICON=grpc               ORGNAME='gRPC'                       PROJ=grpc                   PROJDB=grpc                   ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-grafana.yaml || exit 21
ICON=coredns            ORGNAME='CoreDNS'                    PROJ=coredns                PROJDB=coredns                ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-grafana.yaml || exit 22
ICON=containerd         ORGNAME='containerd'                 PROJ=containerd             PROJDB=containerd             ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-grafana.yaml || exit 23
ICON=rkt                ORGNAME='rkt'                        PROJ=rkt                    PROJDB=rkt                    ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-grafana.yaml || exit 24
ICON=cni                ORGNAME='CNI'                        PROJ=cni                    PROJDB=cni                    ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-grafana.yaml || exit 25
ICON=jaeger             ORGNAME='Jaeger'                     PROJ=jaeger                 PROJDB=jaeger                 ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-grafana.yaml || exit 26
ICON=notary             ORGNAME='Notary'                     PROJ=notary                 PROJDB=notary                 ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-grafana.yaml || exit 27
ICON=tuf                ORGNAME='TUF'                        PROJ=tuf                    PROJDB=tuf                    ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-grafana.yaml || exit 28
ICON=rook               ORGNAME='Rook'                       PROJ=rook                   PROJDB=rook                   ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-grafana.yaml || exit 29
ICON=vitess             ORGNAME='Vitess'                     PROJ=vitess                 PROJDB=vitess                 ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-grafana.yaml || exit 30
ICON=nats               ORGNAME='NATS'                       PROJ=nats                   PROJDB=nats                   ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-grafana.yaml || exit 31
ICON=opa                ORGNAME='OPA'                        PROJ=opa                    PROJDB=opa                    ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-grafana.yaml || exit 32
ICON=spiffe             ORGNAME='SPIFFE'                     PROJ=spiffe                 PROJDB=spiffe                 ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-grafana.yaml || exit 33
ICON=spire              ORGNAME='SPIRE'                      PROJ=spire                  PROJDB=spire                  ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-grafana.yaml || exit 34
ICON=cloudevents        ORGNAME='CloudEvents'                PROJ=cloudevents            PROJDB=cloudevents            ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-grafana.yaml || exit 35
ICON=telepresence       ORGNAME='Telepresence'               PROJ=telepresence           PROJDB=telepresence           ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-grafana.yaml || exit 36
ICON=helm               ORGNAME='Helm'                       PROJ=helm                   PROJDB=helm                   ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-grafana.yaml || exit 37
ICON=openmetrics        ORGNAME='OpenMetrics'                PROJ=openmetrics            PROJDB=openmetrics            ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-grafana.yaml || exit 38
ICON=harbor             ORGNAME='Harbor'                     PROJ=harbor                 PROJDB=harbor                 ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-grafana.yaml || exit 39
ICON=etcd               ORGNAME='etcd'                       PROJ=etcd                   PROJDB=etcd                   ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-grafana.yaml || exit 40
ICON=tikv               ORGNAME='TiKV'                       PROJ=tikv                   PROJDB=tikv                   ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-grafana.yaml || exit 41
ICON=cortex             ORGNAME='Cortex'                     PROJ=cortex                 PROJDB=cortex                 ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-grafana.yaml || exit 42
ICON=buildpacks         ORGNAME='Buildpacks'                 PROJ=buildpacks             PROJDB=buildpacks             ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-grafana.yaml || exit 43
ICON=falco              ORGNAME='Falco'                      PROJ=falco                  PROJDB=falco                  ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-grafana.yaml || exit 44
ICON=dragonfly          ORGNAME='DragonFly'                  PROJ=dragonfly              PROJDB=dragonfly              ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-grafana.yaml || exit 45
ICON=virtualkubelet     ORGNAME='Virtual Kubelet'            PROJ=virtualkubelet         PROJDB=virtualkubelet         ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-grafana.yaml || exit 46
ICON=opencontainers     ORGNAME='OCI'                        PROJ=opencontainers         PROJDB=opencontainers         ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-grafana.yaml || exit 47
ICON=cncf               ORGNAME='CNCF'                       PROJ=cncf                   PROJDB=cncf                   ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-grafana.yaml || exit 48
ICON=cncf               ORGNAME='Istio'                      PROJ=istio                  PROJDB=istio                  ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-grafana.yaml || exit 49
ICON=spinnaker          ORGNAME='Spinnaker'                  PROJ=spinnaker              PROJDB=spinnaker              ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-grafana.yaml || exit 50
ICON=cncf               ORGNAME='Knative'                    PROJ=knative                PROJDB=knative                ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-grafana.yaml || exit 51
ICON=kubeedge           ORGNAME='KubeEdge'                   PROJ=kubeedge               PROJDB=kubeedge               ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-grafana.yaml || exit 52
ICON=brigade            ORGNAME='Brigade'                    PROJ=brigade                PROJDB=brigade                ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-grafana.yaml || exit 53
ICON=crio               ORGNAME='CRI-O'                      PROJ=crio                   PROJDB=crio                   ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-grafana.yaml || exit 54
ICON=tekton             ORGNAME='Tekton'                     PROJ=tekton                 PROJDB=tekton                 ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-grafana.yaml || exit 55
ICON=jenkinsx           ORGNAME='Jenkins X'                  PROJ=jenkinsx               PROJDB=jenkinsx               ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-grafana.yaml || exit 56
ICON=jenkins            ORGNAME='Jenkins'                    PROJ=jenkins                PROJDB=jenkins                ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-grafana.yaml || exit 57
ICON=networkservicemesh ORGNAME='Network Service Mesh'       PROJ=networkservicemesh     PROJDB=networkservicemesh     ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-grafana.yaml || exit 58
ICON=openebs            ORGNAME='OpenEBS'                    PROJ=openebs                PROJDB=openebs                ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-grafana.yaml || exit 59
ICON=opentelemetry      ORGNAME='OpenTelemetry'              PROJ=opentelemetry          PROJDB=opentelemetry          ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-grafana.yaml || exit 60
ICON=graphql            ORGNAME='GraphQL'                    PROJ=graphql                PROJDB=graphql                ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-grafana.yaml || exit 61
ICON=graphqljs          ORGNAME='GraphQL JavaScript'         PROJ=graphqljs              PROJDB=graphqljs              ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-grafana.yaml || exit 62
ICON=graphiql           ORGNAME='GraphQL IDE'                PROJ=graphiql               PROJDB=graphiql               ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-grafana.yaml || exit 63
ICON=graphqlspec        ORGNAME='GraphQL Spec'               PROJ=graphqlspec            PROJDB=graphqlspec            ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-grafana.yaml || exit 64
ICON=expressgraphql     ORGNAME='Express GraphQL'            PROJ=expressgraphql         PROJDB=expressgraphql         ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-grafana.yaml || exit 65
ICON=kubeflow           ORGNAME='Kubeflow'                   PROJ=kubeflow               PROJDB=kubeflow               ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-grafana.yaml || exit 65
