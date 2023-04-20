

# k8s-external-secrets

![Version: 1.1.2](https://img.shields.io/badge/Version-1.1.2-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 0.1.0](https://img.shields.io/badge/AppVersion-0.1.0-informational?style=flat-square)

A chart to deploy one or more externalsecret CRD manifests

## Notes
* This chart can generate multiple ExternSecret CRD manifests

## How to install this chart

Add Humn.AI private chart repo:

```console
helm repo add humn-charts https://raw.githubusercontent.com/humn-ai/helm-charts/*
```

A simple install with default values:

```console
helm install humn-charts/k8s-external-secrets
```

To install the chart with the release name `my-release`:

```console
helm install my-release humn-charts/k8s-external-secrets
```

To install with some set values:

```console
helm install my-release humn-charts/k8s-external-secrets --set values_key1=value1 --set values_key2=value2
```

To install with custom values file:

```console
helm install my-release humn-charts/k8s-external-secrets -f values.yaml
```

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| clusterExternalSecret.enabled | bool | `false` |  |
| clusterSecretStore.enabled | bool | `false` |  |
| newExternalSecret.enabled | bool | `false` |  |
| newSecrets | string | `nil` |  |
| secrets | string | `nil` |  |

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| DevOps | <devops@humn.ai> |  |
