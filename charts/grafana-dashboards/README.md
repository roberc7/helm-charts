# grafana-dashboards

![Version: 1.0.0](https://img.shields.io/badge/Version-1.0.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 9.0.5](https://img.shields.io/badge/AppVersion-9.0.5-informational?style=flat-square)

Helm chart for `grafana-dashboards`. Details included in `README.md`.

**Homepage:** <https://github.com/roberc7/airnz-argocd-live>

## How to install this chart

```console
helm repo add airnz https://raw.githubusercontent.com/roberc7/helm-charts/*
```

Installing a chart with default values:

```console
helm install airnz/grafana-dashboards
```

Installing a chart with a named release.

```console
helm install my-release airnz-charts/grafana-dashboards
```

Installing a chart with set values:

```console
helm install my-release airnz-charts/grafana-dashboards --set values_key1=value1 --set values_key2=value2
```

Installing a chart with custom values:

```console
helm install my-release airnz-charts/grafana-dashboards -f values.yaml
```

## Requirements

Kubernetes: `>=1.24.0-0`

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| commonLabels | object | `{}` |  |
| config.cloudwatch_uid | string | `"dummy"` |  |
| config.env | string | `"dummy"` |  |
| config.graphql_api_id | string | `"dummy"` |  |
| config.loki_uid | string | `"dummy"` |  |
| config.microservice_folderid | string | `"0"` |  |
| config.msk_cluster_name | string | `"dummy"` |  |
| enabled | bool | `true` |  |
| fullnameOverride | string | `nil` |  |
| label | string | `"grafana_dashboard"` |  |
| nameOverride | string | `nil` |  |
| namespaceOverride | string | `nil` |  |

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| roberc7 | <callum.robertson@airnz.co.nz> | <https://github.com/roberc7> |
