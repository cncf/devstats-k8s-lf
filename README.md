# devstats-k8s-lf

DevStats kubernetes deployment for LF projects (bare kubernetes, no Helm packaging) - this also includes kubernetes util scripts to manipulate DevStats deployment


# Set default namespace

You should set namespace to 'devstats' first: `./switch_namespace.sh devstats`.


# Images

See `github.com/cncf/devstats-docker-images` for the info about how to build docker images used by this deployment. You can also test them there.


# Debugging running pods

You can run shell inside the running container:

- To bash into a running pod do: `./util/pod_shell.sh pod-name`, where pod name can be for example: `devstats-provision-cncf-1550826466080940119`.


# Secrets

Secret data is not checked-in into the repository. For each file in `./kubernetes/secrets/*.secret.example` you need to create your own `./kubernetes/secrets/*.secret` and propagate into your cluster.

Once all those files are created, use `./kubernetes/create_secrets.sh` script to propagate them into your Kubernetes cluster.

Please note that `vi` automatically adds new line to all text files, to remove it run `truncate -s -1` on a saved file.


# Test pods before actually running them

This is optional (it starts real containers with their command replaced with the shell and then you can use `./kubernetes/pod_shell.sh` to shell into them and run their actual command manually):

- To dry-run manifests against your Kubernetes cluster, run: `./kubernetes/dryrun_manifest.sh ./kubernetes/manifests/*.yaml`. This will show the final manifest and check if it can be applied.
- Prepend `./kubernetes/apply_manifest.sh` call with `SLEEP=1` to apply a manifest with its command replaced with `sleep 36000`. You can then use `./util/pod_shell.sh` to bash into that container running forever sleep and check its state. You should delete that pod after testing it. It will terminate automatically after 10 hours (36000s).
- Observe environment via: `env | grep -E '(GHA2DB|^PG_|^ES_|^ONLY|INIT|^PROJ)' | sort`. See PV mounts: `df -h`. Delete pod `kubectl delete pod pod-name`.


# Deploy on Kubernetes

- Run `./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-pvc.yaml` to create persistent volume and persistent volume claim for git repository clones storage. This must be done first.
- You need all secrets to be populated via `./kubernetes/create-secrets.sh`. There is a `./kubernetes/manifests/devstats-secrets.yaml` file, but all secret values are `eHh4Cg==` here (this is `xxx` base 64 encoded).
- Run `PROJ=... PROJDB=... PROJREPO=... INIT=1 ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-provision.yaml` to do an initial Kubernetes deployment (bootstrap logs database, users and deploys first project). You can use `ONLYINIT=1` to test bootstrapping logs database and users only - that will skip actual first project provision.
- Run `PROJ=... PROJDB=... PROJREPO=... ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-provision.yaml` to deploy any next project.
- Run `ONLY=projname CRON='8 * * * *' ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-hourly-sync.yaml` to create a hourly sync of `projname` at every hour and 8 minutes.
- Run `PROJ=... PROJDB=... ICON=... ORGNAME=... ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-grafana.yaml` to create a Grafana UI pod for a given project.
- Run `PROJ=... ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-service.yaml` to expose Grafana via LoadBalancer service.
- To provision all projects do: `./kubernetes/provision_them_all.sh`, then wait for all `devstats-provision-...` pods to complete. This can take a *LOT* of time.
- To setup hourly sync for all currently defined project just run: `./kubernetes/cron_them_all.sh`. Do it after all initial provisioning is completed (not needed but recommended, otherwise cronjobs will wait).
- To create all Grafanas use: `./kubernetes/grafanas_for_all.sh`. Do it after all initial provisioning is completed (not needed but recommended, otherwise Grafanas will access not fully provisioned databases and some dashboards may not work) until ready).
- To create LoadBalancer services for all Grafanas use: `./kubernetes/services_for_all.sh`. Do it after grafanas are created, otherwise services will point to voids.
- To cleanup completed pod, use: `./kubernetes/cleanup_completed_pods.sh`.
- To delete all DevStats cron jobs run: `./kubernetes/delete_devstats_cron_jobs.sh`.


# Helm

- To delete and recreate cron jobs run: `./kubernetes/recreate_cron_jobs.sh`. This uses Helm chart `github.com/cncf/devstats-helm-lf`.
- Many other examples described in `github.com/cncf/devstats-helm-lf`.


# New projects

See `github.com/cncf/devstats-docker-images/NEW_PROJECT.md`.
