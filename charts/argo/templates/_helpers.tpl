{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "argocd-bootstrap.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "argocd-bootstrap.fullname" -}}
{{- if .Values.fullnameOverride -}}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- if contains $name .Release.Name -}}
{{- .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}
{{- end -}}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "argocd-bootstrap.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create the name of the service account
*/}}
{{- define "argocd-bootstrap.serviceAccountName" -}}
{{- if .Values.serviceAccount.create -}}
    {{ default (include "argocd-bootstrap.fullname" .) .Values.serviceAccount.name }}
{{- else -}}
    {{ default "default" .Values.serviceAccount.name }}
{{- end -}}
{{- end -}}

{{- define "argocd-bootstrap.serviceAccountNameTest" -}}
{{- if .Values.serviceAccount.create -}}
    {{ default (print (include "argocd-bootstrap.fullname" .) "-test") .Values.serviceAccount.nameTest }}
{{- else -}}
    {{ default "default" .Values.serviceAccount.nameTest }}
{{- end -}}
{{- end -}}

{{/*
Allow the release namespace to be overridden for multi-namespace deployments in combined charts
*/}}
{{- define "argocd-bootstrap.namespace" -}}
  {{- if .Values.namespaceOverride -}}
    {{- .Values.namespaceOverride -}}
  {{- else -}}
    {{- .Release.Namespace -}}
  {{- end -}}
{{- end -}}

{{/*
Common labels
*/}}
{{- define "argocd-bootstrap.labels" -}}
helm.sh/chart: {{ include "argocd-bootstrap.chart" . }}
{{ include "argocd-bootstrap.selectorLabels" . }}
{{- end -}}

{{/*
Selector labels
*/}}
{{- define "argocd-bootstrap.selectorLabels" -}}
app.kubernetes.io/name: {{ include "argocd-bootstrap.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}