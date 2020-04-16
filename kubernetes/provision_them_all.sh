#!/bin/bash
PROJ=iovisor                PROJDB=iovisor                PROJREPO='iovisor/bcc' INIT=1                    ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-provision.yaml || exit 4
PROJ=mininet                PROJDB=mininet                PROJREPO='mininet/mininet'                       ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-provision.yaml || exit 5
PROJ=opennetworkinglab      PROJDB=opennetworkinglab      PROJREPO='opennetworkinglab/onos'                ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-provision.yaml || exit 6
PROJ=opensecuritycontroller PROJDB=opensecuritycontroller PROJREPO='opensecuritycontroller/osc-core'       ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-provision.yaml || exit 7
PROJ=openswitch             PROJDB=openswitch             PROJREPO='open-switch/opx-nas-interface'         ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-provision.yaml || exit 8
PROJ=p4lang                 PROJDB=p4lang                 PROJREPO='p4lang/p4c'                            ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-provision.yaml || exit 9
PROJ=openbmp                PROJDB=openbmp                PROJREPO='OpenBMP/openbmp'                       ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-provision.yaml || exit 10
PROJ=tungstenfabric         PROJDB=tungstenfabric         PROJREPO='tungstenfabric/website'                ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-provision.yaml || exit 11
PROJ=cord                   PROJDB=cord                   PROJREPO='opencord/voltha'                       ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-provision.yaml || exit 12
PROJ=envoy                  PROJDB=envoy                  PROJREPO='envoyproxy/envoy'                      ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-provision.yaml || exit 13
PROJ=zephyr                 PROJDB=zephyr                 PROJREPO='zephyrproject-rtos/zephyr'             ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-provision.yaml || exit 14
PROJ=linux                  PROJDB=linux                  PROJREPO='torvalds/linux'                        ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-provision.yaml || exit 15
PROJ=kubernetes             PROJDB=gha                    PROJREPO="kubernetes/kubernetes"                 ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-provision.yaml || exit 16
PROJ=prometheus             PROJDB=prometheus             PROJREPO="prometheus/prometheus"                 ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-provision.yaml || exit 17
PROJ=opentracing            PROJDB=opentracing            PROJREPO="opentracing/opentracing-go"            ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-provision.yaml || exit 18
PROJ=fluentd                PROJDB=fluentd                PROJREPO="fluent/fluentd"                        ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-provision.yaml || exit 19
PROJ=linkerd                PROJDB=linkerd                PROJREPO="linkerd/linkerd"                       ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-provision.yaml || exit 20
PROJ=grpc                   PROJDB=grpc                   PROJREPO="grpc/grpc"                             ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-provision.yaml || exit 21
PROJ=coredns                PROJDB=coredns                PROJREPO="coredns/coredns"                       ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-provision.yaml || exit 22
PROJ=containerd             PROJDB=containerd             PROJREPO="containerd/containerd"                 ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-provision.yaml || exit 23
PROJ=rkt                    PROJDB=rkt                    PROJREPO="rkt/rkt"                               ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-provision.yaml || exit 24
PROJ=cni                    PROJDB=cni                    PROJREPO="containernetworking/cni"               ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-provision.yaml || exit 25
PROJ=jaeger                 PROJDB=jaeger                 PROJREPO="jaegertracing/jaeger"                  ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-provision.yaml || exit 26
PROJ=notary                 PROJDB=notary                 PROJREPO="theupdateframework/notary"             ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-provision.yaml || exit 27
PROJ=tuf                    PROJDB=tuf                    PROJREPO="theupdateframework/tuf"                ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-provision.yaml || exit 28
PROJ=rook                   PROJDB=rook                   PROJREPO="rook/rook"                             ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-provision.yaml || exit 29
PROJ=vitess                 PROJDB=vitess                 PROJREPO="vitessio/vitess"                       ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-provision.yaml || exit 30
PROJ=nats                   PROJDB=nats                   PROJREPO="nats-io/nats-server"                   ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-provision.yaml || exit 31
PROJ=opa                    PROJDB=opa                    PROJREPO="open-policy-agent/opa"                 ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-provision.yaml || exit 32
PROJ=spiffe                 PROJDB=spiffe                 PROJREPO="spiffe/spiffe"                         ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-provision.yaml || exit 33
PROJ=spire                  PROJDB=spire                  PROJREPO="spiffe/spire"                          ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-provision.yaml || exit 34
PROJ=cloudevents            PROJDB=cloudevents            PROJREPO="cloudevents/spec"                      ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-provision.yaml || exit 35
PROJ=telepresence           PROJDB=telepresence           PROJREPO="telepresenceio/telepresence"           ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-provision.yaml || exit 36
PROJ=helm                   PROJDB=helm                   PROJREPO="helm/helm"                             ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-provision.yaml || exit 37
PROJ=openmetrics            PROJDB=openmetrics            PROJREPO="OpenObservability/OpenMetrics"         ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-provision.yaml || exit 38
PROJ=harbor                 PROJDB=harbor                 PROJREPO="goharbor/harbor"                       ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-provision.yaml || exit 39
PROJ=etcd                   PROJDB=etcd                   PROJREPO="etcd-io/etcd"                          ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-provision.yaml || exit 40
PROJ=tikv                   PROJDB=tikv                   PROJREPO="tikv/tikv"                             ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-provision.yaml || exit 41
PROJ=cortex                 PROJDB=cortex                 PROJREPO="cortexproject/cortex"                  ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-provision.yaml || exit 42
PROJ=buildpacks             PROJDB=buildpacks             PROJREPO="buildpacks/lifecycle"                  ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-provision.yaml || exit 43
PROJ=falco                  PROJDB=falco                  PROJREPO="falcosecurity/falco"                   ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-provision.yaml || exit 44
PROJ=dragonfly              PROJDB=dragonfly              PROJREPO="dragonflyoss/Dragonfly"                ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-provision.yaml || exit 45
PROJ=virtualkubelet         PROJDB=virtualkubelet         PROJREPO="virtual-kubelet/virtual-kubelet"       ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-provision.yaml || exit 46
PROJ=opencontainers         PROJDB=opencontainers         PROJREPO="opencontainers/runc"                   ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-provision.yaml || exit 47
PROJ=cncf                   PROJDB=cncf                   PROJREPO="cncf/landscapeapp"                     ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-provision.yaml || exit 48
PROJ=istio                  PROJDB=istio                  PROJREPO="istio/istio"                           ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-provision.yaml || exit 49
PROJ=spinnaker              PROJDB=spinnaker              PROJREPO="spinnaker/spinnaker"                   ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-provision.yaml || exit 50
PROJ=knative                PROJDB=knative                PROJREPO="knative/serving"                       ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-provision.yaml || exit 51
PROJ=kubeedge               PROJDB=kubeedge               PROJREPO="kubeedge/kubeedge"                     ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-provision.yaml || exit 52
PROJ=brigade                PROJDB=brigade                PROJREPO="Azure/brigade"                         ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-provision.yaml || exit 53
PROJ=crio                   PROJDB=crio                   PROJREPO="cri-o/cri-o"                           ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-provision.yaml || exit 54
PROJ=tekton                 PROJDB=tekton                 PROJREPO="knative/build"                         ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-provision.yaml || exit 55
PROJ=jenkinsx               PROJDB=jenkinsx               PROJREPO="jenkins-x/jx"                          ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-provision.yaml || exit 56
PROJ=jenkins                PROJDB=jenkins                PROJREPO="jenkinsci/jenkins"                     ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-provision.yaml || exit 57
PROJ=networkservicemesh     PROJDB=networkservicemesh     PROJREPO="networkservicemesh/networkservicemesh" ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-provision.yaml || exit 58
PROJ=openebs                PROJDB=openebs                PROJREPO="openebs/openebs"                       ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-provision.yaml || exit 59
PROJ=opentelemetry          PROJDB=opentelemetry          PROJREPO="open-telemetry/opentelemetry-java"     ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-provision.yaml || exit 60
PROJ=graphql                PROJDB=graphql                PROJREPO="graphql/graphql-js"                    ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-provision.yaml || exit 61
PROJ=graphqljs              PROJDB=graphqljs              PROJREPO="graphql/graphql-js"                    ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-provision.yaml || exit 62
PROJ=graphiql               PROJDB=graphiql               PROJREPO="graphql/graphiql"                      ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-provision.yaml || exit 63
PROJ=graphqlspec            PROJDB=graphqlspec            PROJREPO="graphql/graphql-spec"                  ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-provision.yaml || exit 64
PROJ=expressgraphql         PROJDB=expressgraphql         PROJREPO="graphql/express-graphql"               ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-provision.yaml || exit 65
PROJ=kubeflow               PROJDB=kubeflow               PROJREPO="kubeflow/kubeflow"                     ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-provision.yaml || exit 66
