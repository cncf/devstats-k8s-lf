# devstats-k8s-lf

DevStats kubernetes deployment for LF projects (bare kubernetes, no Helm packaging) - this also includes kubernetes util scripts to manipulate DevStats deployment


# Set default namespace

You should set namespace to 'devstats' first: `./switch_namespace.sh devstats`.


# Images

See `github.com/cncf/devstats-docker-images` for the info about how to build docker images used by this deployment. You can also test them there.


# Debugging running pods

You can run shell inside the running container:

- To bash into a running pod do: `./util/pod_shell.sh pod-name`, where pod name can be for example: `devstats-provision-1550826466080940119`, `devstats-test-1550826466080940119`, `devstats-minimal-test-1550826466080940119`, `devstats-1550826466080940119`.


# Secrets

Secret data is not checked-in into the repository. For each file in `./kubernetes/secrets/*.secret.example` you need to create your own `./kubernetes/secrets/*.secret` and propagate into your cluser.

Once all those files are created, use `./kubernetes/create_secrets.sh` script to propagate them into you Kubernetes cluster.

Please note that `vi` automatically adds new line to all text files, to remove it run `truncate -s -1` on a saved file.


# Test pods before actually running them

This is optional (it starts real containers with their command replaced with the shell and then you can use `./kubernetes/pod_shell.sh` to shell into them and run their actual command manually):

- To dry-run manifests against your Kubernetes cluster, run: `./kubernetes/dryrun_manifest.sh ./kubernetes/manifests/*.yaml`. This will show the final manifest and check if it can be applied.
- Prepend `./kubernetes/apply_manifest.sh` call with `SLEEP=1` to apply a manifest with its command replaced with `sleep 36000`. You can the use `./util/pod_shell.sh` to bash into that container running forever sleep and check its state. You should delete that pod after testing it. It will terminate automatically after 10 hours (36000s).
- Observe environment via: `env | grep -E '(GHA2DB|^PG_|^ES_|^ONLY|INIT|^PROJ)' | sort`. See PVs mounts: `df -h`. Delete pod `kubectl delete pod pod-name`.
- Use `ONLY=projname ./kubernetes/apply_manifest.sh ./kubernetes/other_manifests/test-devstats-hourly-sync.yaml` to test hourly sync. Shell into pod: `./kubernetes/pod_shell.sh pod-name`. Run `devstats`. Delete pod: `kubectl delete pod pod-name`.
- Use `PROJ=projname PROJDB=projdb PROJREPO='org/name' INIT=1 ./kubernetes/apply_manifest.sh ./kubernetes/other_manifests/test-devstats-provision.yaml`. You can use `ONLYINIT=1` to test bootstraping logs database and users only. Shell into pod: `./kubernetes/pod_shell.sh pod-name`. Run `./kubernetes/deploy_all.sh`. Delete pod: `kubectl delete pod pod-name`.
- To deploy next projects skip `INIT=1` (this is used to bootstrap default users and logs database). This is not mandatory, `INIT=1` will not do any harm, it will detect existing users and databases.


# Deploy on Kubernetes

- Run `./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-pvc.yml` to create presistent volume and persisten volume claim for git repository clones storage. This must be done first. You also need all secrets to be populated via `./kubernetes/create-secrets.sh`.
- Run `PROJ=... PROJDB=... PROJREPO=... INIT=1 ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-provision.yaml` to do an initial Kubernetes deployment (bootstraps logs database, users and deploys first project). You can use `ONLYINIT=1` to test bootstraping logs database and users only - that will skip actual first project provision.
- Run `PROJ=... PROJDB=... PROJREPO=... ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-provision.yaml` to deploy any next project.
- Run `ONLY=projname CRON='8 * * * *' ./kubernetes/apply_manifest.sh ./kubernetes/manifests/devstats-hourly-sync.yaml` to create a hourly sync of `projname` at evey hour and 8 minutes.
- To provision all projects do: `./kubernetes/provision_them_all.sh`, then wait for all `devstats-provision-1...` pods to finish. This can take a *LOT* of time.
- To setup hourly sync for all currently defined project just run: `./kubernetes/cron_them_all.sh`. Do it after all initial provisioning is finished.
- To cleanup completed pod, use: `./kubernetes/cleanup_completed_pods.sh`.
- To delete all DevStats cron jobs run: `./kubernetes/delete_devstats_cron_jobs.sh`.
- To delete and recreate cron jobs run: `./kubernetes/recreate_cron_jobs.sh`. This uses Helm and `devstats-helm` chart.

# New projects

See `NEW_PROJECT.md`.
