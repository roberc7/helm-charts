# microservice-basic

![Version: 1.2.3](https://img.shields.io/badge/Version-1.2.3-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 0.1.0](https://img.shields.io/badge/AppVersion-0.1.0-informational?style=flat-square)

Helm chart for `microservice-basic`. Details included in `README.md`.

**Homepage:** <https://github.com/roberc7/helm-charts>

## How to install this chart

```console
helm repo add roberc7 https://raw.githubusercontent.com/roberc7/helm-charts/*
```

Installing a chart with default values:

```console
helm install roberc7/microservice-basic
```

Installing a chart with a named release.

```console
helm install my-release roberc7/microservice-basic
```

Installing a chart with set values:

```console
helm install my-release roberc7/microservice-basic --set values_key1=value1 --set values_key2=value2
```

Installing a chart with custom values:

```console
helm install my-release roberc7/microservice-basic -f values.yaml
```

## Requirements

Kubernetes: `>=1.24.0-0`

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| annotations | object | `{}` |  |
| autoscaling.enabled | bool | `false` |  |
| config | object | `{}` |  |
| configContainerPath | object | `{}` |  |
| containerSecurityContext.allowPrivilegeEscalation | bool | `false` |  |
| containerSecurityContext.readOnlyRootFilesystem | bool | `true` |  |
| enabled | bool | `true` |  |
| fullNameOverride | string | `"goproxy"` |  |
| image.pullPolicy | string | `"Always"` |  |
| image.repository | string | `"registry.hub.docker.com/goproxy/goproxy"` |  |
| image.tag | string | `"latest"` |  |
| imagePullSecrets | object | `{}` |  |
| ingress.enabled | bool | `false` |  |
| livenessProbe.initialDelaySeconds | int | `15` |  |
| livenessProbe.periodSeconds | int | `20` |  |
| livenessProbe.tcpSocket.port | int | `8081` |  |
| metricsService | object | `{}` |  |
| networkPolicy | object | `{}` |  |
| nodeSelector | object | `{}` |  |
| podAnnotations | object | `{}` |  |
| podDisruptionBudget | object | `{}` |  |
| podSecurityContext | object | `{}` |  |
| rbac.pspEnabled | bool | `false` |  |
| readinessProbe.initialDelaySeconds | int | `5` |  |
| readinessProbe.periodSeconds | int | `10` |  |
| readinessProbe.tcpSocket.port | int | `8081` |  |
| replicaCount | int | `1` |  |
| resources.limits.memory | string | `"256Mi"` |  |
| resources.requests.cpu | string | `"200m"` |  |
| resources.requests.memory | string | `"256Mi"` |  |
| securityContext | object | `{}` |  |
| service.name | string | `"http"` |  |
| service.port | int | `8081` |  |
| service.type | string | `"ClusterIP"` |  |
| serviceAccount.create | bool | `false` |  |
| serviceMonitor.enabled | bool | `false` |  |
| tolerations | object | `{}` |  |
| topologySpreadConstraints | object | `{}` |  |

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| roberc7 | <callum.robertson@airnz.co.nz> | <https://github.com/roberc7> |
