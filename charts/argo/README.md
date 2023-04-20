# argo

![Version: 1.5.8](https://img.shields.io/badge/Version-1.5.8-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: v2.6.1](https://img.shields.io/badge/AppVersion-v2.6.1-informational?style=flat-square)

Helm chart for `argo`. Details included in `README.md`.

**Homepage:** <https://github.com/roberc7/helm-charts>

## How to install this chart

```console
helm repo add airnz https://raw.githubusercontent.com/roberc7/helm-charts/*
```

Installing a chart with default values:

```console
helm install airnz/argo
```

Installing a chart with a named release.

```console
helm install my-release airnz-charts/argo
```

Installing a chart with set values:

```console
helm install my-release airnz-charts/argo --set values_key1=value1 --set values_key2=value2
```

Installing a chart with custom values:

```console
helm install my-release airnz-charts/argo -f values.yaml
```

## Requirements

Kubernetes: `>=1.24.0-0`

| Repository | Name | Version |
|------------|------|---------|
| https://argoproj.github.io/argo-helm | argo-cd | 4.5.7 |
| https://argoproj.github.io/argo-helm | argo-events | 2.0.4 |
| https://argoproj.github.io/argo-helm | argo-rollouts | 2.20.0 |
| https://argoproj.github.io/argo-helm | argo-workflows | 0.17.1 |
| https://raw.githubusercontent.com/roberc7/helm-charts/gh-pages | external-secrets | 1.1.0 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| applicationsets | object | `{}` |  |
| argo-cd.apiVersionOverrides.certmanager | string | `""` | String to override apiVersion of certmanager resources rendered by this helm chart |
| argo-cd.apiVersionOverrides.ingress | string | `"networking.k8s.io/v1"` | String to override apiVersion of ingresses rendered by this helm chart |
| argo-cd.applicationSet.affinity | object | `{}` | Assign custom [affinity] rules |
| argo-cd.applicationSet.args.debug | bool | `false` | Print debug logs |
| argo-cd.applicationSet.args.dryRun | bool | `false` | Enable dry run mode |
| argo-cd.applicationSet.args.enableLeaderElection | bool | `false` | The default leader election setting |
| argo-cd.applicationSet.args.metricsAddr | string | `":8080"` | The default metric address |
| argo-cd.applicationSet.args.policy | string | `"create-only"` | How application is synced between the generator and the cluster |
| argo-cd.applicationSet.args.probeBindAddr | string | `":8081"` | The default health check port |
| argo-cd.applicationSet.enabled | bool | `true` | Enable Application Set controller |
| argo-cd.applicationSet.extraArgs | list | `[]` | List of extra cli args to add |
| argo-cd.applicationSet.extraContainers | list | `[]` | Additional containers to be added to the applicationset controller pod |
| argo-cd.applicationSet.extraEnv | list | `[]` | Environment variables to pass to the controller |
| argo-cd.applicationSet.extraEnvFrom | list | `[]` (See [values.yaml]) | envFrom to pass to the controller |
| argo-cd.applicationSet.extraVolumeMounts | list | `[]` | List of extra mounts to add (normally used with extraVolumes) |
| argo-cd.applicationSet.extraVolumes | list | `[]` | List of extra volumes to add |
| argo-cd.applicationSet.image.pullPolicy | string | `"IfNotPresent"` | Image pull policy for the application set controller |
| argo-cd.applicationSet.image.repository | string | `"quay.io/argoproj/argocd-applicationset"` | Repository to use for the application set controller |
| argo-cd.applicationSet.image.tag | string | `"v0.4.1"` | Tag to use for the application set controller |
| argo-cd.applicationSet.imagePullSecrets | list | `[]` | If defined, uses a Secret to pull an image from a private Docker registry or repository. |
| argo-cd.applicationSet.metrics.enabled | bool | `true` | Deploy metrics service |
| argo-cd.applicationSet.metrics.service.annotations | object | `{}` | Metrics service annotations |
| argo-cd.applicationSet.metrics.service.labels | object | `{}` | Metrics service labels |
| argo-cd.applicationSet.metrics.service.servicePort | int | `8085` | Metrics service port |
| argo-cd.applicationSet.metrics.serviceMonitor.additionalLabels | object | `{}` | Prometheus ServiceMonitor labels |
| argo-cd.applicationSet.metrics.serviceMonitor.enabled | bool | `true` | Enable a prometheus ServiceMonitor |
| argo-cd.applicationSet.metrics.serviceMonitor.interval | string | `"30s"` | Prometheus ServiceMonitor interval |
| argo-cd.applicationSet.metrics.serviceMonitor.metricRelabelings | list | `[]` | Prometheus [MetricRelabelConfigs] to apply to samples before ingestion |
| argo-cd.applicationSet.metrics.serviceMonitor.namespace | string | `""` | Prometheus ServiceMonitor namespace |
| argo-cd.applicationSet.metrics.serviceMonitor.relabelings | list | `[]` | Prometheus [RelabelConfigs] to apply to samples before scraping |
| argo-cd.applicationSet.metrics.serviceMonitor.selector | object | `{}` | Prometheus ServiceMonitor selector |
| argo-cd.applicationSet.name | string | `"applicationset-controller"` | Application Set controller name string |
| argo-cd.applicationSet.nodeSelector | object | `{}` | [Node selector] |
| argo-cd.applicationSet.podAnnotations | object | `{}` | Annotations for the controller pods |
| argo-cd.applicationSet.podLabels | object | `{}` | Labels for the controller pods |
| argo-cd.applicationSet.podSecurityContext | object | `{}` | Pod Security Context |
| argo-cd.applicationSet.priorityClassName | string | `""` | If specified, indicates the pod's priority. If not specified, the pod priority will be default or zero if there is no default. |
| argo-cd.applicationSet.replicaCount | int | `1` | The number of controller pods to run |
| argo-cd.applicationSet.resources | object | `{}` | Resource limits and requests for the controller pods. |
| argo-cd.applicationSet.securityContext | object | `{}` | Security Context |
| argo-cd.applicationSet.service.annotations | object | `{}` | Application set service annotations |
| argo-cd.applicationSet.service.labels | object | `{}` | Application set service labels |
| argo-cd.applicationSet.service.port | int | `7000` | Application set service port |
| argo-cd.applicationSet.service.portName | string | `"webhook"` | Application set service port name |
| argo-cd.applicationSet.serviceAccount.annotations | object | `{}` | Annotations to add to the service account |
| argo-cd.applicationSet.serviceAccount.create | bool | `true` | Specifies whether a service account should be created |
| argo-cd.applicationSet.serviceAccount.name | string | `""` | The name of the service account to use. If not set and create is true, a name is generated using the fullname template |
| argo-cd.applicationSet.tolerations | object | `{}` | [Tolerations] for use with node taints |
| argo-cd.applicationSet.webhook.ingress.annotations | object | `{}` | Additional ingress annotations |
| argo-cd.applicationSet.webhook.ingress.enabled | bool | `false` | Enable an ingress resource for Webhooks |
| argo-cd.applicationSet.webhook.ingress.extraPaths | list | `[]` | Additional ingress paths |
| argo-cd.applicationSet.webhook.ingress.hosts | list | `[]` | List of ingress hosts |
| argo-cd.applicationSet.webhook.ingress.ingressClassName | string | `""` | Defines which ingress controller will implement the resource |
| argo-cd.applicationSet.webhook.ingress.labels | object | `{}` | Additional ingress labels |
| argo-cd.applicationSet.webhook.ingress.pathType | string | `"Prefix"` | Ingress path type. One of `Exact`, `Prefix` or `ImplementationSpecific` |
| argo-cd.applicationSet.webhook.ingress.paths | list | `["/api/webhook"]` | List of ingress paths |
| argo-cd.applicationSet.webhook.ingress.tls | list | `[]` | Ingress TLS configuration |
| argo-cd.configs.clusterCredentials | list | `[]` (See [values.yaml]) | Provide one or multiple [external cluster credentials] |
| argo-cd.configs.credentialTemplates | object | `{}` | Repository credentials to be used as Templates for other repos |
| argo-cd.configs.gpgKeys | object | `{}` (See [values.yaml]) | [GnuPG](https://argoproj.github.io/argo-cd/user-guide/gpg-verification/) keys to add to the key ring |
| argo-cd.configs.gpgKeysAnnotations | object | `{}` | GnuPG key ring annotations |
| argo-cd.configs.knownHosts.data.ssh_known_hosts | string | See [values.yaml] | Known Hosts |
| argo-cd.configs.knownHostsAnnotations | object | `{}` | Known Hosts configmap annotations |
| argo-cd.configs.repositoryCredentials | object | `{}` | *DEPRECATED:* Instead, use `configs.credentialTemplates` and/or `configs.repositories` |
| argo-cd.configs.secret | object | `{"annotations":{},"argocdServerAdminPassword":"","argocdServerAdminPasswordMtime":"","argocdServerTlsConfig":{},"bitbucketServerSecret":"","bitbucketUUID":"","createSecret":true,"extra":{},"githubSecret":"","gitlabSecret":"","gogsSecret":""}` | Repositories list to be used by applications repositories:   helm-stable:     type: helm     url: https://charts.helm.sh/stable     name: helm-stable   argo:     type: helm     url: https://argoproj.github.io/argo-helm     name: argo |
| argo-cd.configs.secret.annotations | object | `{}` | Annotations to be added to argocd-secret |
| argo-cd.configs.secret.argocdServerAdminPassword | string | `""` | Bcrypt hashed admin password |
| argo-cd.configs.secret.argocdServerAdminPasswordMtime | string | `""` (defaults to current time) | Admin password modification time. Eg. `"2006-01-02T15:04:05Z"` |
| argo-cd.configs.secret.argocdServerTlsConfig | object | `{}` | Argo TLS Data |
| argo-cd.configs.secret.bitbucketServerSecret | string | `""` | Shared secret for authenticating BitbucketServer webhook events |
| argo-cd.configs.secret.bitbucketUUID | string | `""` | UUID for authenticating Bitbucket webhook events |
| argo-cd.configs.secret.createSecret | bool | `true` | Create the argocd-secret |
| argo-cd.configs.secret.extra | object | `{}` | add additional secrets to be added to argocd-secret |
| argo-cd.configs.secret.githubSecret | string | `""` | Shared secret for authenticating GitHub webhook events |
| argo-cd.configs.secret.gitlabSecret | string | `""` | Shared secret for authenticating GitLab webhook events |
| argo-cd.configs.secret.gogsSecret | string | `""` | Shared secret for authenticating Gogs webhook events |
| argo-cd.configs.styles | string | `""` (See [values.yaml]) | Define custom [CSS styles] for your argo instance. This setting will automatically mount the provided CSS and reference it in the argo configuration. |
| argo-cd.configs.tlsCerts | object | See [values.yaml] | TLS certificate |
| argo-cd.configs.tlsCertsAnnotations | object | `{}` | TLS certificate configmap annotations |
| argo-cd.controller.affinity | object | `{}` | Assign custom [affinity] rules to the deployment |
| argo-cd.controller.args.appResyncPeriod | string | `"180"` | define the application controller `--app-resync` |
| argo-cd.controller.args.operationProcessors | string | `"10"` | define the application controller `--operation-processors` |
| argo-cd.controller.args.repoServerTimeoutSeconds | string | `"60"` | define the application controller `--repo-server-timeout-seconds` |
| argo-cd.controller.args.selfHealTimeout | string | `"5"` | define the application controller `--self-heal-timeout-seconds` |
| argo-cd.controller.args.statusProcessors | string | `"20"` | define the application controller `--status-processors` |
| argo-cd.controller.clusterAdminAccess.enabled | bool | `true` | Enable RBAC for local cluster deployments |
| argo-cd.controller.clusterRoleRules.enabled | bool | `false` | Enable custom rules for the application controller's ClusterRole resource |
| argo-cd.controller.clusterRoleRules.rules | list | `[]` | List of custom rules for the application controller's ClusterRole resource |
| argo-cd.controller.containerPort | int | `8082` | Application controller listening port |
| argo-cd.controller.containerSecurityContext | object | `{}` | Application controller container-level security context |
| argo-cd.controller.enableStatefulSet | bool | `false` | Deploy the application controller as a StatefulSet instead of a Deployment, this is required for HA capability. |
| argo-cd.controller.env | list | `[]` | Environment variables to pass to application controller |
| argo-cd.controller.envFrom | list | `[]` (See [values.yaml]) | envFrom to pass to application controller |
| argo-cd.controller.extraArgs | list | `[]` | Additional command line arguments to pass to application controller |
| argo-cd.controller.extraContainers | list | `[]` | Additional containers to be added to the application controller pod |
| argo-cd.controller.image.imagePullPolicy | string | `""` (defaults to global.image.imagePullPolicy) | Image pull policy for the application controller |
| argo-cd.controller.image.repository | string | `""` (defaults to global.image.repository) | Repository to use for the application controller |
| argo-cd.controller.image.tag | string | `""` (defaults to global.image.tag) | Tag to use for the application controller |
| argo-cd.controller.initContainers | list | `[]` | Init containers to add to the application controller pod |
| argo-cd.controller.livenessProbe.failureThreshold | int | `3` | Minimum consecutive failures for the [probe] to be considered failed after having succeeded |
| argo-cd.controller.livenessProbe.initialDelaySeconds | int | `10` | Number of seconds after the container has started before [probe] is initiated |
| argo-cd.controller.livenessProbe.periodSeconds | int | `10` | How often (in seconds) to perform the [probe] |
| argo-cd.controller.livenessProbe.successThreshold | int | `1` | Minimum consecutive successes for the [probe] to be considered successful after having failed |
| argo-cd.controller.livenessProbe.timeoutSeconds | int | `1` | Number of seconds after which the [probe] times out |
| argo-cd.controller.logFormat | string | `"text"` | Application controller log format. Either `text` or `json` |
| argo-cd.controller.logLevel | string | `"info"` | Application controller log level |
| argo-cd.controller.metrics.applicationLabels.enabled | bool | `false` | Enables additional labels in argocd_app_labels metric |
| argo-cd.controller.metrics.applicationLabels.labels | list | `[]` | Additional labels |
| argo-cd.controller.metrics.enabled | bool | `true` | Deploy metrics service |
| argo-cd.controller.metrics.rules.additionalLabels | object | `{}` |  |
| argo-cd.controller.metrics.rules.enabled | bool | `true` | Deploy a PrometheusRule for the application controller |
| argo-cd.controller.metrics.rules.namespace | string | `""` |  |
| argo-cd.controller.metrics.rules.selector | object | `{}` |  |
| argo-cd.controller.metrics.rules.spec | list | `[{"alert":"ArgoAppMissing","annotations":{"description":"ArgoCD has not reported any applications data for the past 15 minutes which means that it must be down or not functioning properly.  This needs to be resolved for this cloud to continue to maintain state.\n","summary":"[ArgoCD] No reported applications"},"expr":"absent(argocd_app_info)\n","for":"15m","labels":{"severity":"critical"}},{"alert":"ArgoAppNotSynced","annotations":{"description":"The application [{{`{{$labels.name}}`}} has not been synchronized for over 12 hours which means that the state of this cloud has drifted away from the state inside Git.\n","summary":"[{{`{{$labels.name}}`}}] Application not synchronized"},"expr":"argocd_app_info{sync_status!=\"Synced\"} == 1\n","for":"12h","labels":{"severity":"warning"}}]` | PrometheusRule.Spec for the application controller |
| argo-cd.controller.metrics.service.annotations | object | `{}` | Metrics service annotations |
| argo-cd.controller.metrics.service.labels | object | `{}` | Metrics service labels |
| argo-cd.controller.metrics.service.servicePort | int | `8082` | Metrics service port |
| argo-cd.controller.metrics.serviceMonitor.additionalLabels | object | `{}` | Prometheus ServiceMonitor labels |
| argo-cd.controller.metrics.serviceMonitor.enabled | bool | `true` | Enable a prometheus ServiceMonitor |
| argo-cd.controller.metrics.serviceMonitor.interval | string | `"30s"` | Prometheus ServiceMonitor interval |
| argo-cd.controller.metrics.serviceMonitor.metricRelabelings | list | `[]` | Prometheus [MetricRelabelConfigs] to apply to samples before ingestion |
| argo-cd.controller.metrics.serviceMonitor.namespace | string | `""` | Prometheus ServiceMonitor namespace |
| argo-cd.controller.metrics.serviceMonitor.relabelings | list | `[]` | Prometheus [RelabelConfigs] to apply to samples before scraping |
| argo-cd.controller.metrics.serviceMonitor.selector | object | `{}` | Prometheus ServiceMonitor selector |
| argo-cd.controller.name | string | `"application-controller"` | Application controller name string |
| argo-cd.controller.nodeSelector | object | `{}` | [Node selector] |
| argo-cd.controller.pdb.annotations | object | `{}` | Annotations to be added to application controller pdb |
| argo-cd.controller.pdb.enabled | bool | `false` | Deploy a Poddisruptionbudget for the application controller |
| argo-cd.controller.pdb.labels | object | `{}` | Labels to be added to application controller pdb |
| argo-cd.controller.podAnnotations | object | `{}` | Annotations to be added to application controller pods |
| argo-cd.controller.podLabels | object | `{}` | Labels to be added to application controller pods |
| argo-cd.controller.priorityClassName | string | `""` | Priority class for the application controller pods |
| argo-cd.controller.readinessProbe.failureThreshold | int | `3` | Minimum consecutive failures for the [probe] to be considered failed after having succeeded |
| argo-cd.controller.readinessProbe.initialDelaySeconds | int | `10` | Number of seconds after the container has started before [probe] is initiated |
| argo-cd.controller.readinessProbe.periodSeconds | int | `10` | How often (in seconds) to perform the [probe] |
| argo-cd.controller.readinessProbe.successThreshold | int | `1` | Minimum consecutive successes for the [probe] to be considered successful after having failed |
| argo-cd.controller.readinessProbe.timeoutSeconds | int | `1` | Number of seconds after which the [probe] times out |
| argo-cd.controller.replicas | int | `1` | The number of application controller pods to run. If changing the number of replicas you must pass the number as `ARGOCD_CONTROLLER_REPLICAS` as an environment variable |
| argo-cd.controller.resources | object | `{"limits":{"memory":"512Mi"},"requests":{"cpu":"100m","memory":"128Mi"}}` | Resource limits and requests for the application controller pods |
| argo-cd.controller.service.annotations | object | `{}` | Application controller service annotations |
| argo-cd.controller.service.labels | object | `{}` | Application controller service labels |
| argo-cd.controller.service.port | int | `8082` | Application controller service port |
| argo-cd.controller.service.portName | string | `"https-controller"` | Application controller service port name |
| argo-cd.controller.serviceAccount.annotations | object | `{}` | Annotations applied to created service account |
| argo-cd.controller.serviceAccount.automountServiceAccountToken | bool | `true` | Automount API credentials for the Service Account |
| argo-cd.controller.serviceAccount.create | bool | `true` | Create a service account for the application controller |
| argo-cd.controller.serviceAccount.name | string | `"argocd-application-controller"` | Service account name |
| argo-cd.controller.tolerations | object | `{}` | [Tolerations] for use with node taints |
| argo-cd.controller.topologySpreadConstraints | list | `[]` | Assign custom [TopologySpreadConstraints] rules to the application controller |
| argo-cd.controller.volumeMounts | list | `[{"mountPath":"/dev/shm","name":"dshm"}]` | Additional volumeMounts to the application controller main container |
| argo-cd.controller.volumes | list | `[{"emptyDir":{"medium":"Memory"},"name":"dshm"}]` | Additional volumes to the application controller pod |
| argo-cd.createAggregateRoles | bool | `false` | Create clusterroles that extend existing clusterroles to interact with argo-cd crds |
| argo-cd.dex.affinity | object | `{}` | Assign custom [affinity] rules to the deployment |
| argo-cd.dex.containerPortGrpc | int | `5557` | Container port for gRPC access |
| argo-cd.dex.containerPortHttp | int | `5556` | Container port for HTTP access |
| argo-cd.dex.containerPortMetrics | int | `5558` | Container port for metrics access |
| argo-cd.dex.containerSecurityContext | object | `{}` | Dex container-level security context |
| argo-cd.dex.enabled | bool | `true` | Enable dex |
| argo-cd.dex.env | list | `[]` | Environment variables to pass to the Dex server |
| argo-cd.dex.envFrom | list | `[]` (See [values.yaml]) | envFrom to pass to the Dex server |
| argo-cd.dex.extraArgs | list | `[]` | Additional command line arguments to pass to the Dex server |
| argo-cd.dex.extraContainers | list | `[]` | Additional containers to be added to the dex pod |
| argo-cd.dex.extraVolumeMounts | list | `[]` | Extra volumeMounts to the dex pod |
| argo-cd.dex.extraVolumes | list | `[]` | Extra volumes to the dex pod |
| argo-cd.dex.image.imagePullPolicy | string | `"IfNotPresent"` | Dex imagePullPolicy |
| argo-cd.dex.image.repository | string | `"ghcr.io/dexidp/dex"` | Dex image repository |
| argo-cd.dex.image.tag | string | `"v2.30.2"` | Dex image tag |
| argo-cd.dex.initContainers | list | `[]` | Init containers to add to the dex pod |
| argo-cd.dex.initImage.imagePullPolicy | string | `""` (defaults to global.image.imagePullPolicy) | Argo CD init image imagePullPolicy |
| argo-cd.dex.initImage.repository | string | `""` (defaults to global.image.repository) | Argo CD init image repository |
| argo-cd.dex.initImage.tag | string | `""` (defaults to global.image.tag) | Argo CD init image tag |
| argo-cd.dex.livenessProbe.enabled | bool | `false` | Enable Kubernetes liveness probe for Dex >= 2.28.0 |
| argo-cd.dex.livenessProbe.failureThreshold | int | `3` | Minimum consecutive failures for the [probe] to be considered failed after having succeeded |
| argo-cd.dex.livenessProbe.initialDelaySeconds | int | `10` | Number of seconds after the container has started before [probe] is initiated |
| argo-cd.dex.livenessProbe.periodSeconds | int | `10` | How often (in seconds) to perform the [probe] |
| argo-cd.dex.livenessProbe.successThreshold | int | `1` | Minimum consecutive successes for the [probe] to be considered successful after having failed |
| argo-cd.dex.livenessProbe.timeoutSeconds | int | `1` | Number of seconds after which the [probe] times out |
| argo-cd.dex.metrics.enabled | bool | `true` |  |
| argo-cd.dex.metrics.service.annotations | object | `{}` |  |
| argo-cd.dex.metrics.service.labels | object | `{}` |  |
| argo-cd.dex.metrics.serviceMonitor.enabled | bool | `true` |  |
| argo-cd.dex.metrics.serviceMonitor.interval | string | `"30s"` |  |
| argo-cd.dex.metrics.serviceMonitor.namespace | string | `""` |  |
| argo-cd.dex.metrics.serviceMonitor.selector | object | `{}` |  |
| argo-cd.dex.name | string | `"dex-server"` | Dex name |
| argo-cd.dex.nodeSelector | object | `{}` | [Node selector] |
| argo-cd.dex.pdb.annotations | object | `{}` | Annotations to be added to Dex server pdb |
| argo-cd.dex.pdb.enabled | bool | `false` | Deploy a Poddisruptionbudget for the Dex server |
| argo-cd.dex.pdb.labels | object | `{}` | Labels to be added to Dex server pdb |
| argo-cd.dex.podAnnotations | object | `{}` | Annotations to be added to the Dex server pods |
| argo-cd.dex.podLabels | object | `{}` | Labels to be added to the Dex server pods |
| argo-cd.dex.priorityClassName | string | `""` | Priority class for dex |
| argo-cd.dex.readinessProbe.enabled | bool | `false` | Enable Kubernetes readiness probe for Dex >= 2.28.0 |
| argo-cd.dex.readinessProbe.failureThreshold | int | `3` | Minimum consecutive failures for the [probe] to be considered failed after having succeeded |
| argo-cd.dex.readinessProbe.initialDelaySeconds | int | `10` | Number of seconds after the container has started before [probe] is initiated |
| argo-cd.dex.readinessProbe.periodSeconds | int | `10` | How often (in seconds) to perform the [probe] |
| argo-cd.dex.readinessProbe.successThreshold | int | `1` | Minimum consecutive successes for the [probe] to be considered successful after having failed |
| argo-cd.dex.readinessProbe.timeoutSeconds | int | `1` | Number of seconds after which the [probe] times out |
| argo-cd.dex.resources | object | `{"limits":{"memory":"512Mi"},"requests":{"cpu":"100m","memory":"128Mi"}}` | Resource limits and requests for dex |
| argo-cd.dex.serviceAccount.annotations | object | `{}` | Annotations applied to created service account |
| argo-cd.dex.serviceAccount.automountServiceAccountToken | bool | `true` | Automount API credentials for the Service Account |
| argo-cd.dex.serviceAccount.create | bool | `true` | Create dex service account |
| argo-cd.dex.serviceAccount.name | string | `"argocd-dex-server"` | Dex service account name |
| argo-cd.dex.servicePortGrpc | int | `5557` | Service port for gRPC access |
| argo-cd.dex.servicePortGrpcName | string | `"grpc"` | Service port name for gRPC access |
| argo-cd.dex.servicePortHttp | int | `5556` | Service port for HTTP access |
| argo-cd.dex.servicePortHttpName | string | `"http"` | Service port name for HTTP access |
| argo-cd.dex.servicePortMetrics | int | `5558` | Service port for metrics access |
| argo-cd.dex.tolerations | object | `{}` | [Tolerations] for use with node taints |
| argo-cd.dex.topologySpreadConstraints | list | `[]` | Assign custom [TopologySpreadConstraints] rules to dex |
| argo-cd.dex.volumeMounts | list | `[{"mountPath":"/shared","name":"static-files"}]` | Additional volumeMounts to the dex main container |
| argo-cd.dex.volumes | list | `[{"emptyDir":{},"name":"static-files"}]` | Additional volumes to the dex pod |
| argo-cd.enabled | bool | `true` |  |
| argo-cd.externalRedis.existingSecret | string | `""` | The name of an existing secret with Redis credentials (must contain key `redis-password`). When it's set, the `externalRedis.password` parameter is ignored |
| argo-cd.externalRedis.host | string | `""` | External Redis server host |
| argo-cd.externalRedis.password | string | `""` | External Redis password |
| argo-cd.externalRedis.port | int | `6379` | External Redis server port |
| argo-cd.extraObjects | list | `[]` | Array of extra K8s manifests to deploy |
| argo-cd.fullnameOverride | string | `""` | String to fully override `"argo-cd.fullname"` |
| argo-cd.global.additionalLabels | object | `{}` | Additional labels to add to all resources |
| argo-cd.global.hostAliases | list | `[]` | Mapping between IP and hostnames that will be injected as entries in the pod's hosts files |
| argo-cd.global.image.imagePullPolicy | string | `"IfNotPresent"` | If defined, a imagePullPolicy applied to all Argo CD deployments |
| argo-cd.global.image.repository | string | `"quay.io/argoproj/argocd"` | If defined, a repository applied to all Argo CD deployments |
| argo-cd.global.image.tag | string | `""` | Overrides the global Argo CD image tag whose default is the chart appVersion |
| argo-cd.global.imagePullSecrets | list | `[]` | If defined, uses a Secret to pull an image from a private Docker registry or repository |
| argo-cd.global.networkPolicy.create | bool | `false` | Create NetworkPolicy objects for all components |
| argo-cd.global.networkPolicy.defaultDenyIngress | bool | `false` | Default deny all ingress traffic |
| argo-cd.global.podAnnotations | object | `{}` | Annotations for the all deployed pods |
| argo-cd.global.podLabels | object | `{}` | Labels for the all deployed pods |
| argo-cd.global.securityContext | object | `{}` | Toggle and define securityContext. See [values.yaml] |
| argo-cd.kubeVersionOverride | string | `""` | Override the Kubernetes version, which is used to evaluate certain manifests |
| argo-cd.nameOverride | string | `"argocd"` | Provide a name in place of `argocd` |
| argo-cd.openshift.enabled | bool | `false` | enables using arbitrary uid for argo repo server |
| argo-cd.redis-ha.affinity | string | `"podAntiAffinity:\n  requiredDuringSchedulingIgnoredDuringExecution:\n    - labelSelector:\n        matchLabels:\n          app: redis-ha\n      topologyKey: topology.kubernetes.io/zone\n  preferredDuringSchedulingIgnoredDuringExecution:\n      - weight: 100\n        podAffinityTerm:\n          labelSelector:\n            matchLabels:\n              app: redis-ha\n          topologyKey: topology.kubernetes.io/hostname\n"` | Assign custom [affinity] rules to the deployment |
| argo-cd.redis-ha.enabled | bool | `false` | Enables the Redis HA subchart and disables the custom Redis single node deployment |
| argo-cd.redis-ha.exporter.enabled | bool | `true` | If `true`, the prometheus exporter sidecar is enabled |
| argo-cd.redis-ha.haproxy.enabled | bool | `true` | Enabled HAProxy LoadBalancing/Proxy |
| argo-cd.redis-ha.haproxy.metrics.enabled | bool | `true` | HAProxy enable prometheus metric scraping |
| argo-cd.redis-ha.image.tag | string | `"6.2.6-alpine"` | Redis tag |
| argo-cd.redis-ha.nodeSelector | object | `{}` | [Node selector] |
| argo-cd.redis-ha.persistentVolume.accessModes[0] | string | `"ReadWriteOnce"` |  |
| argo-cd.redis-ha.persistentVolume.enabled | bool | `true` | Configures persistency on Redis nodes |
| argo-cd.redis-ha.persistentVolume.size | string | `"1Gi"` |  |
| argo-cd.redis-ha.persistentVolume.storageClass | string | `"gp2-v2"` |  |
| argo-cd.redis-ha.priorityClassName | string | `"argocd-node-high"` | Priority class for redis |
| argo-cd.redis-ha.redis.config | object | See [values.yaml] | Any valid redis config options in this section will be applied to each server (see `redis-ha` chart) |
| argo-cd.redis-ha.redis.config.save | string | `"\"\""` | Will save the DB if both the given number of seconds and the given number of write operations against the DB occurred. `""`  is disabled |
| argo-cd.redis-ha.redis.masterGroupName | string | `"argocd"` | Redis convention for naming the cluster group: must match `^[\\w-\\.]+$` and can be templated |
| argo-cd.redis-ha.tolerations | object | `{}` | [Tolerations] for use with node taints |
| argo-cd.redis.affinity | object | `{}` | Assign custom [affinity] rules to the deployment |
| argo-cd.redis.containerPort | int | `6379` | Redis container port |
| argo-cd.redis.containerSecurityContext | object | `{}` | Redis container-level security context |
| argo-cd.redis.enabled | bool | `true` |  |
| argo-cd.redis.env | list | `[]` | Environment variables to pass to the Redis server |
| argo-cd.redis.envFrom | list | `[]` (See [values.yaml]) | envFrom to pass to the Redis server |
| argo-cd.redis.extraArgs | list | `[]` | Additional command line arguments to pass to redis-server |
| argo-cd.redis.extraContainers | list | `[]` | Additional containers to be added to the redis pod |
| argo-cd.redis.image.imagePullPolicy | string | `"IfNotPresent"` | Redis imagePullPolicy |
| argo-cd.redis.image.repository | string | `"redis"` | Redis repository |
| argo-cd.redis.image.tag | string | `"6.2.6-alpine"` | Redis tag |
| argo-cd.redis.initContainers | list | `[]` | Init containers to add to the redis pod |
| argo-cd.redis.metrics.containerPort | int | `9121` | Port to use for redis-exporter sidecar |
| argo-cd.redis.metrics.enabled | bool | `false` | Deploy metrics service and redis-exporter sidecar |
| argo-cd.redis.metrics.image.imagePullPolicy | string | `"IfNotPresent"` | redis-exporter image PullPolicy |
| argo-cd.redis.metrics.image.repository | string | `"bitnami/redis-exporter"` | redis-exporter image repository |
| argo-cd.redis.metrics.image.tag | string | `"1.26.0-debian-10-r2"` | redis-exporter image tag |
| argo-cd.redis.metrics.resources | object | `{}` | Resource limits and requests for redis-exporter sidecar |
| argo-cd.redis.metrics.service.annotations | object | `{}` | Metrics service annotations |
| argo-cd.redis.metrics.service.clusterIP | string | `"None"` | Metrics service clusterIP. `None` makes a "headless service" (no virtual IP) |
| argo-cd.redis.metrics.service.labels | object | `{}` | Metrics service labels |
| argo-cd.redis.metrics.service.portName | string | `"http-metrics"` | Metrics service port name |
| argo-cd.redis.metrics.service.servicePort | int | `9121` | Metrics service port |
| argo-cd.redis.metrics.service.type | string | `"ClusterIP"` | Metrics service type |
| argo-cd.redis.metrics.serviceMonitor.additionalLabels | object | `{}` | Prometheus ServiceMonitor labels |
| argo-cd.redis.metrics.serviceMonitor.enabled | bool | `false` | Enable a prometheus ServiceMonitor |
| argo-cd.redis.metrics.serviceMonitor.interval | string | `"30s"` | Interval at which metrics should be scraped |
| argo-cd.redis.metrics.serviceMonitor.metricRelabelings | list | `[]` | Prometheus [MetricRelabelConfigs] to apply to samples before ingestion |
| argo-cd.redis.metrics.serviceMonitor.namespace | string | `""` | Prometheus ServiceMonitor namespace |
| argo-cd.redis.metrics.serviceMonitor.relabelings | list | `[]` | Prometheus [RelabelConfigs] to apply to samples before scraping |
| argo-cd.redis.metrics.serviceMonitor.selector | object | `{}` | Prometheus ServiceMonitor selector |
| argo-cd.redis.name | string | `"redis"` | Redis name |
| argo-cd.redis.nodeSelector | object | `{}` | [Node selector] |
| argo-cd.redis.pdb.annotations | object | `{}` | Annotations to be added to Redis server pdb |
| argo-cd.redis.pdb.enabled | bool | `false` | Deploy a Poddisruptionbudget for the Redis server |
| argo-cd.redis.pdb.labels | object | `{}` | Labels to be added to Redis server pdb |
| argo-cd.redis.podAnnotations | object | `{}` | Annotations to be added to the Redis server pods |
| argo-cd.redis.podLabels | object | `{}` | Labels to be added to the Redis server pods |
| argo-cd.redis.priorityClassName | string | `""` | Priority class for redis |
| argo-cd.redis.resources | object | `{"limits":{"memory":"512Mi"},"requests":{"cpu":"100m","memory":"128Mi"}}` | Resource limits and requests for redis |
| argo-cd.redis.securityContext | object | `{"runAsNonRoot":true,"runAsUser":999}` | Redis pod-level security context |
| argo-cd.redis.service.annotations | object | `{}` | Redis service annotations |
| argo-cd.redis.service.labels | object | `{}` | Additional redis service labels |
| argo-cd.redis.serviceAccount.annotations | object | `{}` | Annotations applied to created service account |
| argo-cd.redis.serviceAccount.automountServiceAccountToken | bool | `false` | Automount API credentials for the Service Account |
| argo-cd.redis.serviceAccount.create | bool | `false` | Create a service account for the redis pod |
| argo-cd.redis.serviceAccount.name | string | `""` | Service account name for redis pod |
| argo-cd.redis.servicePort | int | `6379` | Redis service port |
| argo-cd.redis.tolerations | object | `{}` | [Tolerations] for use with node taints |
| argo-cd.redis.topologySpreadConstraints | list | `[]` | Assign custom [TopologySpreadConstraints] rules to redis |
| argo-cd.redis.volumeMounts | list | `[]` | Additional volumeMounts to the redis container |
| argo-cd.redis.volumes | list | `[]` | Additional volumes to the redis pod |
| argo-cd.repoServer.affinity | object | `{}` | Assign custom [affinity] rules to the deployment |
| argo-cd.repoServer.autoscaling.enabled | bool | `true` | Enable Horizontal Pod Autoscaler ([HPA]) for the repo server |
| argo-cd.repoServer.autoscaling.maxReplicas | int | `5` | Maximum number of replicas for the repo server [HPA] |
| argo-cd.repoServer.autoscaling.minReplicas | int | `3` | Minimum number of replicas for the repo server [HPA] |
| argo-cd.repoServer.autoscaling.targetCPUUtilizationPercentage | int | `90` | Average CPU utilization percentage for the repo server [HPA] |
| argo-cd.repoServer.autoscaling.targetMemoryUtilizationPercentage | int | `90` | Average memory utilization percentage for the repo server [HPA] |
| argo-cd.repoServer.clusterAdminAccess.enabled | bool | `false` | Enable RBAC for local cluster deployments |
| argo-cd.repoServer.clusterRoleRules.enabled | bool | `false` | Enable custom rules for the Repo server's Cluster Role resource |
| argo-cd.repoServer.clusterRoleRules.rules | list | `[]` | List of custom rules for the Repo server's Cluster Role resource |
| argo-cd.repoServer.containerPort | int | `8081` | Configures the repo server port |
| argo-cd.repoServer.containerSecurityContext | object | `{}` | Repo server container-level security context |
| argo-cd.repoServer.copyutil.resources | object | `{}` | Resource limits and requests for the copyutil initContainer |
| argo-cd.repoServer.env | list | `[]` | Environment variables to pass to repo server |
| argo-cd.repoServer.envFrom | list | `[]` (See [values.yaml]) | envFrom to pass to repo server |
| argo-cd.repoServer.extraArgs | list | `[]` | Additional command line arguments to pass to repo server |
| argo-cd.repoServer.extraContainers | list | `[]` | Additional containers to be added to the repo server pod |
| argo-cd.repoServer.image.imagePullPolicy | string | `""` (defaults to global.image.imagePullPolicy) | Image pull policy for the repo server |
| argo-cd.repoServer.image.repository | string | `""` (defaults to global.image.repository) | Repository to use for the repo server |
| argo-cd.repoServer.image.tag | string | `""` (defaults to global.image.tag) | Tag to use for the repo server |
| argo-cd.repoServer.initContainers | list | `[]` | Init containers to add to the repo server pods |
| argo-cd.repoServer.livenessProbe.failureThreshold | int | `3` | Minimum consecutive failures for the [probe] to be considered failed after having succeeded |
| argo-cd.repoServer.livenessProbe.initialDelaySeconds | int | `10` | Number of seconds after the container has started before [probe] is initiated |
| argo-cd.repoServer.livenessProbe.periodSeconds | int | `10` | How often (in seconds) to perform the [probe] |
| argo-cd.repoServer.livenessProbe.successThreshold | int | `1` | Minimum consecutive successes for the [probe] to be considered successful after having failed |
| argo-cd.repoServer.livenessProbe.timeoutSeconds | int | `1` | Number of seconds after which the [probe] times out |
| argo-cd.repoServer.logFormat | string | `"text"` | Repo server log format: Either `text` or `json` |
| argo-cd.repoServer.logLevel | string | `"info"` | Repo server log level |
| argo-cd.repoServer.metrics.enabled | bool | `true` | Deploy metrics service |
| argo-cd.repoServer.metrics.service.annotations | object | `{}` | Metrics service annotations |
| argo-cd.repoServer.metrics.service.labels | object | `{}` | Metrics service labels |
| argo-cd.repoServer.metrics.service.servicePort | int | `8084` | Metrics service port |
| argo-cd.repoServer.metrics.serviceMonitor.additionalLabels | object | `{}` | Prometheus ServiceMonitor labels |
| argo-cd.repoServer.metrics.serviceMonitor.enabled | bool | `true` | Enable a prometheus ServiceMonitor |
| argo-cd.repoServer.metrics.serviceMonitor.interval | string | `"30s"` | Prometheus ServiceMonitor interval |
| argo-cd.repoServer.metrics.serviceMonitor.metricRelabelings | list | `[]` | Prometheus [MetricRelabelConfigs] to apply to samples before ingestion |
| argo-cd.repoServer.metrics.serviceMonitor.namespace | string | `""` | Prometheus ServiceMonitor namespace |
| argo-cd.repoServer.metrics.serviceMonitor.relabelings | list | `[]` | Prometheus [RelabelConfigs] to apply to samples before scraping |
| argo-cd.repoServer.metrics.serviceMonitor.selector | object | `{}` | Prometheus ServiceMonitor selector |
| argo-cd.repoServer.name | string | `"repo-server"` | Repo server name |
| argo-cd.repoServer.nodeSelector | object | `{}` | [Node selector] |
| argo-cd.repoServer.pdb.annotations | object | `{}` | Annotations to be added to Repo server pdb |
| argo-cd.repoServer.pdb.enabled | bool | `false` | Deploy a Poddisruptionbudget for the Repo server |
| argo-cd.repoServer.pdb.labels | object | `{}` | Labels to be added to Repo server pdb |
| argo-cd.repoServer.podAnnotations | object | `{}` | Annotations to be added to repo server pods |
| argo-cd.repoServer.podLabels | object | `{}` | Labels to be added to repo server pods |
| argo-cd.repoServer.priorityClassName | string | `""` | Priority class for the repo server |
| argo-cd.repoServer.rbac | list | `[]` | Repo server rbac rules |
| argo-cd.repoServer.readinessProbe.failureThreshold | int | `3` | Minimum consecutive failures for the [probe] to be considered failed after having succeeded |
| argo-cd.repoServer.readinessProbe.initialDelaySeconds | int | `10` | Number of seconds after the container has started before [probe] is initiated |
| argo-cd.repoServer.readinessProbe.periodSeconds | int | `10` | How often (in seconds) to perform the [probe] |
| argo-cd.repoServer.readinessProbe.successThreshold | int | `1` | Minimum consecutive successes for the [probe] to be considered successful after having failed |
| argo-cd.repoServer.readinessProbe.timeoutSeconds | int | `1` | Number of seconds after which the [probe] times out |
| argo-cd.repoServer.replicas | int | `1` | The number of repo server pods to run |
| argo-cd.repoServer.resources | object | `{"limits":{"memory":"512Mi"},"requests":{"cpu":"100m","memory":"128Mi"}}` | Resource limits and requests for the repo server pods |
| argo-cd.repoServer.service.annotations | object | `{}` | Repo server service annotations |
| argo-cd.repoServer.service.labels | object | `{}` | Repo server service labels |
| argo-cd.repoServer.service.port | int | `8081` | Repo server service port |
| argo-cd.repoServer.service.portName | string | `"https-repo-server"` | Repo server service port name |
| argo-cd.repoServer.serviceAccount.annotations | object | `{}` | Annotations applied to created service account |
| argo-cd.repoServer.serviceAccount.automountServiceAccountToken | bool | `true` | Automount API credentials for the Service Account |
| argo-cd.repoServer.serviceAccount.create | bool | `true` | Create repo server service account |
| argo-cd.repoServer.serviceAccount.name | string | `""` | Repo server service account name |
| argo-cd.repoServer.tolerations | object | `{}` | [Tolerations] for use with node taints |
| argo-cd.repoServer.topologySpreadConstraints | list | `[]` | Assign custom [TopologySpreadConstraints] rules to the repo server |
| argo-cd.repoServer.volumeMounts | list | `[]` | Additional volumeMounts to the repo server main container |
| argo-cd.repoServer.volumes | list | `[]` | Additional volumes to the repo server pod |
| argo-cd.server.GKEbackendConfig.enabled | bool | `false` | Enable BackendConfig custom resource for Google Kubernetes Engine |
| argo-cd.server.GKEbackendConfig.spec | object | `{}` | [BackendConfigSpec] |
| argo-cd.server.GKEfrontendConfig.enabled | bool | `false` | Enable FrontConfig custom resource for Google Kubernetes Engine |
| argo-cd.server.GKEfrontendConfig.spec | object | `{}` | [FrontendConfigSpec] |
| argo-cd.server.GKEmanagedCertificate.domains | list | `["argocd.example.com"]` | Domains for the Google Managed Certificate |
| argo-cd.server.GKEmanagedCertificate.enabled | bool | `false` | Enable ManagedCertificate custom resource for Google Kubernetes Engine. |
| argo-cd.server.additionalApplications | list | `[]` (See [values.yaml]) | Deploy Argo CD Applications within this helm release |
| argo-cd.server.additionalProjects | list | `[]` (See [values.yaml]) | Deploy Argo CD Projects within this helm release |
| argo-cd.server.affinity | object | `{}` | Assign custom [affinity] rules to the deployment |
| argo-cd.server.autoscaling.enabled | bool | `false` | Enable Horizontal Pod Autoscaler ([HPA]) for the Argo CD server |
| argo-cd.server.autoscaling.maxReplicas | int | `5` | Maximum number of replicas for the Argo CD server [HPA] |
| argo-cd.server.autoscaling.minReplicas | int | `1` | Minimum number of replicas for the Argo CD server [HPA] |
| argo-cd.server.autoscaling.targetCPUUtilizationPercentage | int | `50` | Average CPU utilization percentage for the Argo CD server [HPA] |
| argo-cd.server.autoscaling.targetMemoryUtilizationPercentage | int | `50` | Average memory utilization percentage for the Argo CD server [HPA] |
| argo-cd.server.certificate.additionalHosts | list | `[]` | Certificate manager additional hosts |
| argo-cd.server.certificate.domain | string | `"argocd.example.com"` | Certificate primary domain (commonName) |
| argo-cd.server.certificate.duration | string | `""` | The requested 'duration' (i.e. lifetime) of the Certificate. Value must be in units accepted by Go time.ParseDuration |
| argo-cd.server.certificate.enabled | bool | `false` | Deploy a Certificate resource (requires cert-manager) |
| argo-cd.server.certificate.issuer.kind | string | `""` | Certificate issuer kind. Either `Issuer` or `ClusterIssuer` |
| argo-cd.server.certificate.issuer.name | string | `""` | Certificate isser name. Eg. `letsencrypt` |
| argo-cd.server.certificate.renewBefore | string | `""` | How long before the currently issued certificate's expiry cert-manager should renew the certificate. Value must be in units accepted by Go time.ParseDuration |
| argo-cd.server.certificate.secretName | string | `"argocd-server-tls"` | The name of the Secret that will be automatically created and managed by this Certificate resource |
| argo-cd.server.clusterAdminAccess.enabled | bool | `true` | Enable RBAC for local cluster deployments |
| argo-cd.server.config | object | See [values.yaml] | [General Argo CD configuration] |
| argo-cd.server.configAnnotations | object | `{}` | Annotations to be added to Argo CD ConfigMap |
| argo-cd.server.configEnabled | bool | `true` | Manage Argo CD configmap (Declarative Setup) |
| argo-cd.server.containerPort | int | `8080` | Configures the server port |
| argo-cd.server.containerSecurityContext | object | `{}` | Servers container-level security context |
| argo-cd.server.env | list | `[]` | Environment variables to pass to Argo CD server |
| argo-cd.server.envFrom | list | `[]` (See [values.yaml]) | envFrom to pass to Argo CD server |
| argo-cd.server.extensions.contents | list | `[]` | Extensions to be loaded into the server |
| argo-cd.server.extensions.enabled | bool | `false` | Enable support for extensions |
| argo-cd.server.extensions.image.imagePullPolicy | string | `"IfNotPresent"` | Image pull policy for extensions |
| argo-cd.server.extensions.image.repository | string | `"ghcr.io/argoproj-labs/argocd-extensions"` | Repository to use for extensions image |
| argo-cd.server.extensions.image.tag | string | `"v0.1.0"` | Tag to use for extensions image |
| argo-cd.server.extensions.resources | object | `{}` | Resource limits and requests for the argocd-extensions container |
| argo-cd.server.extraArgs | list | `[]` | Additional command line arguments to pass to Argo CD server |
| argo-cd.server.extraContainers | list | `[]` | Additional containers to be added to the server pod |
| argo-cd.server.image.imagePullPolicy | string | `""` (defaults to global.image.imagePullPolicy) | Image pull policy for the Argo CD server |
| argo-cd.server.image.repository | string | `""` (defaults to global.image.repository) | Repository to use for the Argo CD server |
| argo-cd.server.image.tag | string | `""` (defaults to global.image.tag) | Tag to use for the Argo CD server |
| argo-cd.server.ingress.annotations | object | `{}` | Additional ingress annotations |
| argo-cd.server.ingress.enabled | bool | `true` | Enable an ingress resource for the Argo CD server |
| argo-cd.server.ingress.extraPaths | list | `[]` | Additional ingress paths |
| argo-cd.server.ingress.hosts | list | `[]` | List of ingress hosts |
| argo-cd.server.ingress.https | bool | `false` | Uses `server.service.servicePortHttps` instead `server.service.servicePortHttp` |
| argo-cd.server.ingress.ingressClassName | string | `""` | Defines which ingress controller will implement the resource |
| argo-cd.server.ingress.labels | object | `{}` | Additional ingress labels |
| argo-cd.server.ingress.pathType | string | `"Prefix"` | Ingress path type. One of `Exact`, `Prefix` or `ImplementationSpecific` |
| argo-cd.server.ingress.paths | list | `["/"]` | List of ingress paths |
| argo-cd.server.ingress.tls | list | `[]` | Ingress TLS configuration |
| argo-cd.server.ingressGrpc.annotations | object | `{}` | Additional ingress annotations for dedicated [gRPC-ingress] |
| argo-cd.server.ingressGrpc.awsALB.backendProtocolVersion | string | `"HTTP2"` | Backend protocol version for the AWS ALB gRPC service |
| argo-cd.server.ingressGrpc.awsALB.serviceType | string | `"NodePort"` | Service type for the AWS ALB gRPC service |
| argo-cd.server.ingressGrpc.enabled | bool | `false` | Enable an ingress resource for the Argo CD server for dedicated [gRPC-ingress] |
| argo-cd.server.ingressGrpc.extraPaths | list | `[]` | Additional ingress paths for dedicated [gRPC-ingress] |
| argo-cd.server.ingressGrpc.hosts | list | `[]` | List of ingress hosts for dedicated [gRPC-ingress] |
| argo-cd.server.ingressGrpc.https | bool | `false` | Uses `server.service.servicePortHttps` instead `server.service.servicePortHttp` |
| argo-cd.server.ingressGrpc.ingressClassName | string | `""` | Defines which ingress controller will implement the resource [gRPC-ingress] |
| argo-cd.server.ingressGrpc.isAWSALB | bool | `false` | Setup up gRPC ingress to work with an AWS ALB |
| argo-cd.server.ingressGrpc.labels | object | `{}` | Additional ingress labels for dedicated [gRPC-ingress] |
| argo-cd.server.ingressGrpc.pathType | string | `"Prefix"` | Ingress path type for dedicated [gRPC-ingress]. One of `Exact`, `Prefix` or `ImplementationSpecific` |
| argo-cd.server.ingressGrpc.paths | list | `["/"]` | List of ingress paths for dedicated [gRPC-ingress] |
| argo-cd.server.ingressGrpc.tls | list | `[]` | Ingress TLS configuration for dedicated [gRPC-ingress] |
| argo-cd.server.initContainers | list | `[]` | Init containers to add to the server pod |
| argo-cd.server.lifecycle | object | `{}` | Specify postStart and preStop lifecycle hooks for your argo-cd-server container |
| argo-cd.server.livenessProbe.failureThreshold | int | `3` | Minimum consecutive failures for the [probe] to be considered failed after having succeeded |
| argo-cd.server.livenessProbe.initialDelaySeconds | int | `10` | Number of seconds after the container has started before [probe] is initiated |
| argo-cd.server.livenessProbe.periodSeconds | int | `10` | How often (in seconds) to perform the [probe] |
| argo-cd.server.livenessProbe.successThreshold | int | `1` | Minimum consecutive successes for the [probe] to be considered successful after having failed |
| argo-cd.server.livenessProbe.timeoutSeconds | int | `1` | Number of seconds after which the [probe] times out |
| argo-cd.server.logFormat | string | `"text"` | Argo CD server log format: Either `text` or `json` |
| argo-cd.server.logLevel | string | `"info"` | Argo CD server log level |
| argo-cd.server.metrics.enabled | bool | `true` | Deploy metrics service |
| argo-cd.server.metrics.service.annotations | object | `{}` | Metrics service annotations |
| argo-cd.server.metrics.service.labels | object | `{}` | Metrics service labels |
| argo-cd.server.metrics.service.servicePort | int | `8083` | Metrics service port |
| argo-cd.server.metrics.serviceMonitor.additionalLabels | object | `{}` | Prometheus ServiceMonitor labels |
| argo-cd.server.metrics.serviceMonitor.enabled | bool | `true` | Enable a prometheus ServiceMonitor |
| argo-cd.server.metrics.serviceMonitor.interval | string | `"30s"` | Prometheus ServiceMonitor interval |
| argo-cd.server.metrics.serviceMonitor.metricRelabelings | list | `[]` | Prometheus [MetricRelabelConfigs] to apply to samples before ingestion |
| argo-cd.server.metrics.serviceMonitor.namespace | string | `""` | Prometheus ServiceMonitor namespace |
| argo-cd.server.metrics.serviceMonitor.relabelings | list | `[]` | Prometheus [RelabelConfigs] to apply to samples before scraping |
| argo-cd.server.metrics.serviceMonitor.selector | object | `{}` | Prometheus ServiceMonitor selector |
| argo-cd.server.name | string | `"server"` | Argo CD server name |
| argo-cd.server.nodeSelector | object | `{}` | [Node selector] |
| argo-cd.server.pdb.annotations | object | `{}` | Annotations to be added to server pdb |
| argo-cd.server.pdb.enabled | bool | `false` | Deploy a Poddisruptionbudget for the server |
| argo-cd.server.pdb.labels | object | `{}` | Labels to be added to server pdb |
| argo-cd.server.podAnnotations | object | `{}` | Annotations to be added to server pods |
| argo-cd.server.podLabels | object | `{}` | Labels to be added to server pods |
| argo-cd.server.priorityClassName | string | `""` | Priority class for the Argo CD server |
| argo-cd.server.rbacConfig | object | `{}` | Argo CD rbac config ([Argo CD RBAC policy]) |
| argo-cd.server.rbacConfigAnnotations | object | `{}` | Annotations to be added to Argo CD rbac ConfigMap |
| argo-cd.server.rbacConfigCreate | bool | `true` | Whether or not to create the configmap. If false, it is expected the configmap will be created by something else. Argo CD will not work if there is no configMap created with the name above. |
| argo-cd.server.readinessProbe.failureThreshold | int | `3` | Minimum consecutive failures for the [probe] to be considered failed after having succeeded |
| argo-cd.server.readinessProbe.initialDelaySeconds | int | `10` | Number of seconds after the container has started before [probe] is initiated |
| argo-cd.server.readinessProbe.periodSeconds | int | `10` | How often (in seconds) to perform the [probe] |
| argo-cd.server.readinessProbe.successThreshold | int | `1` | Minimum consecutive successes for the [probe] to be considered successful after having failed |
| argo-cd.server.readinessProbe.timeoutSeconds | int | `1` | Number of seconds after which the [probe] times out |
| argo-cd.server.replicas | int | `1` | The number of server pods to run |
| argo-cd.server.resources | object | `{"limits":{"memory":"512Mi"},"requests":{"cpu":"100m","memory":"128Mi"}}` | Resource limits and requests for the Argo CD server |
| argo-cd.server.route.annotations | object | `{}` | Openshift Route annotations |
| argo-cd.server.route.enabled | bool | `false` | Enable an OpenShift Route for the Argo CD server |
| argo-cd.server.route.hostname | string | `""` | Hostname of OpenShift Route |
| argo-cd.server.route.termination_policy | string | `"None"` | Termination policy of Openshift Route |
| argo-cd.server.route.termination_type | string | `"passthrough"` | Termination type of Openshift Route |
| argo-cd.server.service.annotations | object | `{}` | Server service annotations |
| argo-cd.server.service.externalIPs | list | `[]` | Server service external IPs |
| argo-cd.server.service.externalTrafficPolicy | string | `""` | Denotes if this Service desires to route external traffic to node-local or cluster-wide endpoints |
| argo-cd.server.service.labels | object | `{}` | Server service labels |
| argo-cd.server.service.loadBalancerIP | string | `""` | LoadBalancer will get created with the IP specified in this field |
| argo-cd.server.service.loadBalancerSourceRanges | list | `[]` | Source IP ranges to allow access to service from |
| argo-cd.server.service.namedTargetPort | bool | `true` | Use named target port for argocd |
| argo-cd.server.service.nodePortHttp | int | `30080` | Server service http port for NodePort service type (only if `server.service.type` is set to "NodePort") |
| argo-cd.server.service.nodePortHttps | int | `30443` | Server service https port for NodePort service type (only if `server.service.type` is set to "NodePort") |
| argo-cd.server.service.servicePortHttp | int | `80` | Server service http port |
| argo-cd.server.service.servicePortHttpName | string | `"http"` | Server service http port name, can be used to route traffic via istio |
| argo-cd.server.service.servicePortHttps | int | `443` | Server service https port |
| argo-cd.server.service.servicePortHttpsName | string | `"https"` | Server service https port name, can be used to route traffic via istio |
| argo-cd.server.service.sessionAffinity | string | `""` | Used to maintain session affinity. Supports `ClientIP` and `None` |
| argo-cd.server.service.type | string | `"ClusterIP"` | Server service type |
| argo-cd.server.serviceAccount.annotations | object | `{}` | Annotations applied to created service account |
| argo-cd.server.serviceAccount.automountServiceAccountToken | bool | `true` | Automount API credentials for the Service Account |
| argo-cd.server.serviceAccount.create | bool | `true` | Create server service account |
| argo-cd.server.serviceAccount.name | string | `"argocd-server"` | Server service account name |
| argo-cd.server.staticAssets.enabled | bool | `true` | Disable deprecated flag `--staticassets` |
| argo-cd.server.tolerations | object | `{}` | [Tolerations] for use with node taints |
| argo-cd.server.topologySpreadConstraints | list | `[]` | Assign custom [TopologySpreadConstraints] rules to the Argo CD server |
| argo-cd.server.volumeMounts | list | `[]` | Additional volumeMounts to the server main container |
| argo-cd.server.volumes | list | `[]` | Additional volumes to the server pod |
| argo-events.additionalSaNamespaces | list | `[]` | Create service accounts in additional namespaces specified The SA will always be created in the release namespaces |
| argo-events.additionalServiceAccountRules | list | (See [values.yaml]) | Additional rules |
| argo-events.enabled | bool | `false` |  |
| argo-events.eventbusController.affinity | object | `{}` | Assign custom [affinity] rules to the event bus controller |
| argo-events.eventbusController.containerSecurityContext | object | `{}` | Event bus controller container-level security context |
| argo-events.eventbusController.extraEnv | list | `[]` | Additional environment variables to pass to event bus controller |
| argo-events.eventbusController.image | string | `"argoproj/argo-events"` | Repository to use for the event bus controller |
| argo-events.eventbusController.name | string | `"eventbus-controller"` | Event bus controller name |
| argo-events.eventbusController.natsMetricsExporterImage | string | `"natsio/prometheus-nats-exporter:0.8.0"` | NATS metrics exporter container image to use for the event bus |
| argo-events.eventbusController.natsStreamingImage | string | `"nats-streaming:0.22.1"` | NATS streaming container image to use for the event bus |
| argo-events.eventbusController.nodeSelector | object | `{}` | [Node selector] |
| argo-events.eventbusController.podAnnotations | object | `{}` | Annotations to be added to event bus controller pods |
| argo-events.eventbusController.podLabels | object | `{}` | Labels to be added to event event bus controller pods |
| argo-events.eventbusController.priorityClassName | string | `""` | Priority class for the event bus controller |
| argo-events.eventbusController.replicaCount | int | `1` | The number of event bus controller pods to run |
| argo-events.eventbusController.resources | object | `{}` | Resource limits and requests for the event bus controller pods |
| argo-events.eventbusController.tag | string | `""` (default is the chart appVersion) | Overrides the image tag |
| argo-events.eventbusController.tolerations | object | `{}` | [Tolerations] for use with node taints |
| argo-events.eventsourceController.affinity | object | `{}` | Assign custom [affinity] rules to the event source controller |
| argo-events.eventsourceController.containerSecurityContext | object | `{}` | Event source controller container-level security context |
| argo-events.eventsourceController.eventsourceImage | string | `"argoproj/argo-events"` | Repository to use for the event source image |
| argo-events.eventsourceController.extraEnv | list | `[]` | Additional environment variables to pass to event source controller |
| argo-events.eventsourceController.image | string | `"argoproj/argo-events"` | Repository to use for the event source controller |
| argo-events.eventsourceController.name | string | `"eventsource-controller"` | Event source controller name |
| argo-events.eventsourceController.nodeSelector | object | `{}` | [Node selector] |
| argo-events.eventsourceController.podAnnotations | object | `{}` | Annotations to be added to event source controller pods |
| argo-events.eventsourceController.podLabels | object | `{}` | Labels to be added to event source controller pods |
| argo-events.eventsourceController.priorityClassName | string | `""` | Priority class for the event source controller |
| argo-events.eventsourceController.replicaCount | int | `1` | The number of event source controller pods to run |
| argo-events.eventsourceController.resources | object | `{}` | Resource limits and requests for the event source controller pods |
| argo-events.eventsourceController.tag | string | `""` (default is the chart appVersion) | Overrides the image tag |
| argo-events.eventsourceController.tolerations | object | `{}` | [Tolerations] for use with node taints |
| argo-events.imagePullPolicy | string | `"Always"` | The image pull policy |
| argo-events.imagePullSecrets | list | `[]` | Secrets with credentials to pull images from a private registry |
| argo-events.registry | string | `"quay.io"` | docker registry |
| argo-events.securityContext | object | `{"runAsNonRoot":true,"runAsUser":9731}` | Common PodSecurityContext for all controllers |
| argo-events.sensorController.affinity | object | `{}` | Assign custom [affinity] rules to the sensor controller |
| argo-events.sensorController.containerSecurityContext | object | `{}` | Sensor controllers container-level security context |
| argo-events.sensorController.extraEnv | list | `[]` | Additional environment variables to pass to sensor controller |
| argo-events.sensorController.image | string | `"argoproj/argo-events"` | Repository to use for the sensor controller |
| argo-events.sensorController.name | string | `"sensor-controller"` | Sensor controller name |
| argo-events.sensorController.nodeSelector | object | `{}` | [Node selector] |
| argo-events.sensorController.podAnnotations | object | `{}` | Annotations to be added to sensor controller pods |
| argo-events.sensorController.podLabels | object | `{}` | Labels to be added to sensor controller pods |
| argo-events.sensorController.priorityClassName | string | `""` | Priority class for the sensor controller |
| argo-events.sensorController.replicaCount | int | `1` | The number of sensor controller pods to run |
| argo-events.sensorController.resources | object | `{}` | Resource limits and requests for the sensor controller pods |
| argo-events.sensorController.sensorImage | string | `"argoproj/argo-events"` | Repository to use for the sensor image |
| argo-events.sensorController.tag | string | `""` (default is the chart appVersion) | Overrides the image tag |
| argo-events.sensorController.tolerations | object | `{}` | [Tolerations] for use with node taints |
| argo-events.serviceAccount | string | `"argo-events-sa"` | ServiceAccount to use for running controller. |
| argo-events.serviceAccountAnnotations | object | `{}` | Annotations applied to created service account. Can be used to enable GKE workload identity, or other use-cases |
| argo-events.singleNamespace | bool | `true` | Whether to run in namespaced scope. Set `singleNamespace` to false to have the controllers listen on all namespaces.  Otherwise the controllers will listen on the namespace where the chart is installed in. |
| argo-rollouts.clusterInstall | bool | `true` |  |
| argo-rollouts.containerSecurityContext | object | `{}` |  |
| argo-rollouts.controller.affinity | object | `{}` |  |
| argo-rollouts.controller.component | string | `"rollouts-controller"` |  |
| argo-rollouts.controller.image.pullPolicy | string | `"Always"` |  |
| argo-rollouts.controller.image.registry | string | `"quay.io"` |  |
| argo-rollouts.controller.image.repository | string | `"argoproj/argo-rollouts"` |  |
| argo-rollouts.controller.image.tag | string | `"release-1.1"` |  |
| argo-rollouts.controller.livenessProbe.failureThreshold | int | `3` |  |
| argo-rollouts.controller.livenessProbe.httpGet.path | string | `"/metrics"` |  |
| argo-rollouts.controller.livenessProbe.httpGet.port | int | `8090` |  |
| argo-rollouts.controller.livenessProbe.initialDelaySeconds | int | `30` |  |
| argo-rollouts.controller.livenessProbe.periodSeconds | int | `20` |  |
| argo-rollouts.controller.livenessProbe.successThreshold | int | `1` |  |
| argo-rollouts.controller.livenessProbe.timeoutSeconds | int | `10` |  |
| argo-rollouts.controller.metrics.enabled | bool | `true` |  |
| argo-rollouts.controller.metrics.serviceMonitor.additionalLabels | object | `{}` |  |
| argo-rollouts.controller.metrics.serviceMonitor.enabled | bool | `true` |  |
| argo-rollouts.controller.metrics.serviceMonitor.interval | string | `"30s"` |  |
| argo-rollouts.controller.metrics.serviceMonitor.namespace | string | `""` |  |
| argo-rollouts.controller.metrics.serviceMonitor.selector | object | `{}` |  |
| argo-rollouts.controller.nodeSelector | object | `{}` |  |
| argo-rollouts.controller.readinessProbe.failureThreshold | int | `3` |  |
| argo-rollouts.controller.readinessProbe.httpGet.path | string | `"/metrics"` |  |
| argo-rollouts.controller.readinessProbe.httpGet.port | int | `8090` |  |
| argo-rollouts.controller.readinessProbe.initialDelaySeconds | int | `15` |  |
| argo-rollouts.controller.readinessProbe.periodSeconds | int | `5` |  |
| argo-rollouts.controller.readinessProbe.successThreshold | int | `1` |  |
| argo-rollouts.controller.readinessProbe.timeoutSeconds | int | `4` |  |
| argo-rollouts.controller.resources.limits.memory | string | `"128Mi"` |  |
| argo-rollouts.controller.resources.requests.cpu | string | `"50m"` |  |
| argo-rollouts.controller.resources.requests.memory | string | `"64Mi"` |  |
| argo-rollouts.controller.tolerations | object | `{}` |  |
| argo-rollouts.crdAnnotations | object | `{}` |  |
| argo-rollouts.dashboard.affinity | object | `{}` |  |
| argo-rollouts.dashboard.component | string | `"rollouts-dashboard"` |  |
| argo-rollouts.dashboard.containerSecurityContext | object | `{}` |  |
| argo-rollouts.dashboard.enabled | bool | `true` |  |
| argo-rollouts.dashboard.image.pullPolicy | string | `"Always"` |  |
| argo-rollouts.dashboard.image.registry | string | `"quay.io"` |  |
| argo-rollouts.dashboard.image.repository | string | `"argoproj/kubectl-argo-rollouts"` |  |
| argo-rollouts.dashboard.image.tag | string | `"release-1.1"` |  |
| argo-rollouts.dashboard.nodeSelector | object | `{}` |  |
| argo-rollouts.dashboard.podSecurityContext.runAsNonRoot | bool | `true` |  |
| argo-rollouts.dashboard.resources | object | `{}` |  |
| argo-rollouts.dashboard.serviceAccount.annotations | object | `{}` |  |
| argo-rollouts.dashboard.serviceAccount.create | bool | `true` |  |
| argo-rollouts.dashboard.serviceAccount.name | string | `"kubectl-argocd-rollouts-dashboard"` |  |
| argo-rollouts.dashboard.tolerations | object | `{}` |  |
| argo-rollouts.enabled | bool | `false` |  |
| argo-rollouts.imagePullSecrets | list | `[]` |  |
| argo-rollouts.installCRDs | bool | `true` |  |
| argo-rollouts.keepCRDs | bool | `true` |  |
| argo-rollouts.podAnnotations | object | `{}` |  |
| argo-rollouts.podLabels | object | `{}` |  |
| argo-rollouts.podSecurityContext.runAsNonRoot | bool | `true` |  |
| argo-rollouts.serviceAccount.annotations | object | `{}` |  |
| argo-rollouts.serviceAccount.create | bool | `true` |  |
| argo-rollouts.serviceAccount.name | string | `"argocd-rollouts-controller"` |  |
| argo-rollouts.serviceAnnotations | object | `{}` |  |
| argo-workflows.artifactRepository.archiveLogs | bool | `false` | Archive the main container logs as an artifact |
| argo-workflows.artifactRepository.gcs | object | `{}` (See [values.yaml]) | Store artifact in a GCS object store |
| argo-workflows.artifactRepository.s3 | object | See [values.yaml] | Store artifact in a S3-compliant object store |
| argo-workflows.controller.affinity | object | `{}` | Assign custom [affinity] rules |
| argo-workflows.controller.clusterWorkflowTemplates.enabled | bool | `true` | Create a ClusterRole and CRB for the controller to access ClusterWorkflowTemplates. |
| argo-workflows.controller.containerRuntimeExecutor | string | `"docker"` | Specifies the container runtime interface to use (one of: `docker`, `kubelet`, `k8sapi`, `pns`, `emissary`) |
| argo-workflows.controller.containerRuntimeExecutors | list | `[]` | Specifies the executor to use. This has precedence over `controller.containerRuntimeExecutor`. |
| argo-workflows.controller.extraArgs | list | `[]` | Extra arguments to be added to the controller |
| argo-workflows.controller.extraContainers | list | `[]` | Extra containers to be added to the controller deployment |
| argo-workflows.controller.extraEnv | list | `[]` | Extra environment variables to provide to the controller container |
| argo-workflows.controller.image.registry | string | `"quay.io"` | Registry to use for the controller |
| argo-workflows.controller.image.repository | string | `"argoproj/workflow-controller"` | Registry to use for the controller |
| argo-workflows.controller.image.tag | string | `""` | Overrides the image tag whose default is the chart appVersion. |
| argo-workflows.controller.initialDelay | string | `nil` | Resolves ongoing, uncommon AWS EKS bug: https://github.com/argoproj/argo-workflows/pull/4224 |
| argo-workflows.controller.instanceID.enabled | bool | `false` | Configures the controller to filter workflow submissions to only those which have a matching instanceID attribute. |
| argo-workflows.controller.instanceID.explicitID | string | `""` | Use a custom instanceID |
| argo-workflows.controller.instanceID.useReleaseName | bool | `false` | Use ReleaseName as instanceID |
| argo-workflows.controller.links | list | `[]` | Configure Argo Server to show custom [links] |
| argo-workflows.controller.livenessProbe | object | See [values.yaml] | Configure liveness [probe] for the controller |
| argo-workflows.controller.loadBalancerSourceRanges | list | `[]` | Source ranges to allow access to service from. Only applies to service type `LoadBalancer` |
| argo-workflows.controller.logging.globallevel | string | `"0"` | Set the glog logging level |
| argo-workflows.controller.logging.level | string | `"info"` | Set the logging level (one of: `debug`, `info`, `warn`, `error`) |
| argo-workflows.controller.metricsConfig.enabled | bool | `false` | Enables prometheus metrics server |
| argo-workflows.controller.metricsConfig.path | string | `"/metrics"` | Path is the path where metrics are emitted. Must start with a "/". |
| argo-workflows.controller.metricsConfig.port | int | `9090` | Port is the port where metrics are emitted |
| argo-workflows.controller.metricsConfig.portName | string | `"metrics"` | Container metrics port name |
| argo-workflows.controller.metricsConfig.servicePort | int | `8080` | Service metrics port |
| argo-workflows.controller.metricsConfig.servicePortName | string | `"metrics"` | Service metrics port name |
| argo-workflows.controller.name | string | `"workflow-controller"` | Workflow controller name string |
| argo-workflows.controller.namespaceParallelism | string | `nil` | Limits the maximum number of incomplete workflows in a namespace |
| argo-workflows.controller.nodeSelector | object | `{}` | [Node selector] |
| argo-workflows.controller.parallelism | string | `nil` | parallelism dictates how many workflows can be running at the same time |
| argo-workflows.controller.pdb.enabled | bool | `false` | Configure [Pod Disruption Budget] for the controller pods |
| argo-workflows.controller.persistence | object | `{}` | enable persistence using postgres |
| argo-workflows.controller.podAnnotations | object | `{}` | podAnnotations is an optional map of annotations to be applied to the controller Pods |
| argo-workflows.controller.podLabels | object | `{}` | Optional labels to add to the controller pods |
| argo-workflows.controller.podSecurityContext | object | `{}` | SecurityContext to set on the controller pods |
| argo-workflows.controller.podWorkers | string | `nil` | Number of pod workers |
| argo-workflows.controller.priorityClassName | string | `""` | Leverage a PriorityClass to ensure your pods survive resource shortages. |
| argo-workflows.controller.replicas | int | `1` | The number of controller pods to run |
| argo-workflows.controller.resourceRateLimit | object | `{}` | Globally limits the rate at which pods are created. This is intended to mitigate flooding of the Kubernetes API server by workflows with a large amount of parallel nodes. |
| argo-workflows.controller.resources | object | `{}` | Resource limits and requests for the controller |
| argo-workflows.controller.securityContext | object | `{"allowPrivilegeEscalation":false,"capabilities":{"drop":["ALL"]},"readOnlyRootFilesystem":true,"runAsNonRoot":true}` | the controller container's securityContext |
| argo-workflows.controller.serviceAccount.annotations | object | `{}` | Annotations applied to created service account |
| argo-workflows.controller.serviceAccount.create | bool | `true` | Create a service account for the controller |
| argo-workflows.controller.serviceAccount.name | string | `""` | Service account name |
| argo-workflows.controller.serviceAnnotations | object | `{}` | Annotations to be applied to the controller Service |
| argo-workflows.controller.serviceLabels | object | `{}` | Optional labels to add to the controller Service |
| argo-workflows.controller.serviceMonitor.additionalLabels | object | `{}` | Prometheus ServiceMonitor labels |
| argo-workflows.controller.serviceMonitor.enabled | bool | `false` | Enable a prometheus ServiceMonitor |
| argo-workflows.controller.serviceType | string | `"ClusterIP"` | Service type of the controller Service |
| argo-workflows.controller.telemetryConfig.enabled | bool | `false` | Enables prometheus telemetry server |
| argo-workflows.controller.telemetryConfig.path | string | `"/telemetry"` | telemetry path |
| argo-workflows.controller.telemetryConfig.port | int | `8081` | telemetry container port |
| argo-workflows.controller.telemetryConfig.servicePort | int | `8081` | telemetry service port |
| argo-workflows.controller.telemetryConfig.servicePortName | string | `"telemetry"` | telemetry service port name |
| argo-workflows.controller.tolerations | object | `{}` | [Tolerations] for use with node taints |
| argo-workflows.controller.workflowDefaults | object | `{}` | Default values that will apply to all Workflows from this controller, unless overridden on the Workflow-level. Only valid for 2.7+ |
| argo-workflows.controller.workflowNamespaces | list | `["default"]` | Specify all namespaces where this workflow controller instance will manage workflows. This controls where the service account and RBAC resources will be created. Only valid when singleNamespace is false. |
| argo-workflows.controller.workflowRestrictions | object | `{}` | Restricts the Workflows that the controller will process. Only valid for 2.9+ |
| argo-workflows.controller.workflowWorkers | string | `nil` | Number of workflow workers |
| argo-workflows.createAggregateRoles | bool | `true` | Create clusterroles that extend existing clusterroles to interact with argo-cd crds |
| argo-workflows.enabled | bool | `false` |  |
| argo-workflows.executor.env | object | `{}` | Adds environment variables for the executor. |
| argo-workflows.executor.image.registry | string | `"quay.io"` | Registry to use for the Workflow Executors |
| argo-workflows.executor.image.repository | string | `"argoproj/argoexec"` | Repository to use for the Workflow Executors |
| argo-workflows.executor.image.tag | string | `""` | Overrides the image tag whose default is the chart appVersion. |
| argo-workflows.executor.resources | object | `{}` | Resource limits and requests for the Workflow Executors |
| argo-workflows.executor.securityContext | object | `{}` | sets security context for the executor container |
| argo-workflows.fullnameOverride | string | `nil` | String to fully override "argo-workflows.fullname" template |
| argo-workflows.images.pullPolicy | string | `"Always"` | imagePullPolicy to apply to all containers |
| argo-workflows.images.pullSecrets | list | `[]` | Secrets with credentials to pull images from a private registry |
| argo-workflows.kubeVersionOverride | string | `""` | Override the Kubernetes version, which is used to evaluate certain manifests |
| argo-workflows.nameOverride | string | `"argo-workflows"` | String to partially override "argo-workflows.fullname" template |
| argo-workflows.server.affinity | object | `{}` | Assign custom [affinity] rules |
| argo-workflows.server.baseHref | string | `"/"` | Value for base href in index.html. Used if the server is running behind reverse proxy under subpath different from /. |
| argo-workflows.server.clusterWorkflowTemplates.enableEditing | bool | `true` | Give the server permissions to edit ClusterWorkflowTemplates. |
| argo-workflows.server.clusterWorkflowTemplates.enabled | bool | `true` | Create a ClusterRole and CRB for the server to access ClusterWorkflowTemplates. |
| argo-workflows.server.enabled | bool | `true` | Deploy the Argo Server |
| argo-workflows.server.extraArgs | list | `[]` | Extra arguments to provide to the Argo server binary, such as for disabling authentication. |
| argo-workflows.server.extraContainers | list | `[]` | Extra containers to be added to the server deployment |
| argo-workflows.server.extraEnv | list | `[]` | Extra environment variables to provide to the argo-server container |
| argo-workflows.server.image.registry | string | `"quay.io"` | Registry to use for the server |
| argo-workflows.server.image.repository | string | `"argoproj/argocli"` | Repository to use for the server |
| argo-workflows.server.image.tag | string | `""` | Overrides the image tag whose default is the chart appVersion. |
| argo-workflows.server.ingress.annotations | object | `{}` | Additional ingress annotations |
| argo-workflows.server.ingress.enabled | bool | `false` | Enable an ingress resource |
| argo-workflows.server.ingress.extraPaths | list | `[]` | Additional ingress paths |
| argo-workflows.server.ingress.hosts | list | `[]` | List of ingress hosts |
| argo-workflows.server.ingress.ingressClassName | string | `""` | Defines which ingress controller will implement the resource |
| argo-workflows.server.ingress.labels | object | `{}` | Additional ingress labels |
| argo-workflows.server.ingress.pathType | string | `"Prefix"` | Ingress path type. One of `Exact`, `Prefix` or `ImplementationSpecific` |
| argo-workflows.server.ingress.paths | list | `["/"]` | List of ingress paths |
| argo-workflows.server.ingress.tls | list | `[]` | Ingress TLS configuration |
| argo-workflows.server.loadBalancerIP | string | `""` | Static IP address to assign to loadBalancer service type `LoadBalancer` |
| argo-workflows.server.loadBalancerSourceRanges | list | `[]` | Source ranges to allow access to service from. Only applies to service type `LoadBalancer` |
| argo-workflows.server.name | string | `"server"` | Server name string |
| argo-workflows.server.nodeSelector | object | `{}` | [Node selector] |
| argo-workflows.server.pdb.enabled | bool | `false` | Configure [Pod Disruption Budget] for the server pods |
| argo-workflows.server.podAnnotations | object | `{}` | optional map of annotations to be applied to the ui Pods |
| argo-workflows.server.podLabels | object | `{}` | Optional labels to add to the UI pods |
| argo-workflows.server.podSecurityContext | object | `{}` | SecurityContext to set on the server pods |
| argo-workflows.server.priorityClassName | string | `""` | Leverage a PriorityClass to ensure your pods survive resource shortages |
| argo-workflows.server.replicas | int | `1` | The number of server pods to run |
| argo-workflows.server.resources | object | `{}` | Resource limits and requests for the server |
| argo-workflows.server.secure | bool | `false` | Run the argo server in "secure" mode. Configure this value instead of `--secure` in extraArgs. |
| argo-workflows.server.securityContext | object | `{"allowPrivilegeEscalation":false,"capabilities":{"drop":["ALL"]},"readOnlyRootFilesystem":false,"runAsNonRoot":true}` | Servers container-level security context |
| argo-workflows.server.serviceAccount.annotations | object | `{}` | Annotations applied to created service account |
| argo-workflows.server.serviceAccount.create | bool | `true` | Create a service account for the server |
| argo-workflows.server.serviceAccount.name | string | `""` | Service account name |
| argo-workflows.server.serviceAnnotations | object | `{}` | Annotations to be applied to the UI Service |
| argo-workflows.server.serviceLabels | object | `{}` | Optional labels to add to the UI Service |
| argo-workflows.server.serviceNodePort | string | `nil` | Service node port |
| argo-workflows.server.servicePort | int | `2746` | Service port for server |
| argo-workflows.server.servicePortName | string | `""` | Service port name |
| argo-workflows.server.serviceType | string | `"ClusterIP"` | Service type for server pods |
| argo-workflows.server.sso | object | `{}` | SSO configuration when SSO is specified as a server auth mode. |
| argo-workflows.server.tolerations | object | `{}` | [Tolerations] for use with node taints |
| argo-workflows.server.volumeMounts | list | `[]` | Additional volume mounts to the server main container. |
| argo-workflows.server.volumes | list | `[]` | Additional volumes to the server pod. |
| argo-workflows.singleNamespace | bool | `false` | Restrict Argo to operate only in a single namespace (the namespace of the Helm release) by apply Roles and RoleBindings instead of the Cluster equivalents, and start workflow-controller with the --namespaced flag. Use it in clusters with strict access policy. |
| argo-workflows.useDefaultArtifactRepo | bool | `false` | Influences the creation of the ConfigMap for the workflow-controller itself. |
| argo-workflows.useStaticCredentials | bool | `true` | Use static credentials for S3 (eg. when not using AWS IRSA) |
| argo-workflows.workflow.namespace | string | `nil` | Deprecated; use controller.workflowNamespaces instead. |
| argo-workflows.workflow.rbac.create | bool | `true` | Adds Role and RoleBinding for the above specified service account to be able to run workflows. A Role and Rolebinding pair is also created for each namespace in controller.workflowNamespaces (see below) |
| argo-workflows.workflow.serviceAccount.annotations | object | `{}` | Annotations applied to created service account |
| argo-workflows.workflow.serviceAccount.create | bool | `true` | Specifies whether a service account should be created |
| argo-workflows.workflow.serviceAccount.name | string | `"argo-workflow"` | Service account which is used to run workflows |
| external-secrets.enabled | bool | `false` |  |
| secrets | string | `nil` |  |

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| roberc7 | <callum.robertson@airnz.co.nz> | <https://github.com/roberc7> |
