{{/*
Expand the name of the chart.
*/}}
{{- define "external-secrets.name" -}}
{{- default .Chart.Name .Values.name | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "external-secrets.fullname" -}}
{{- if .Values.fullname }}
{{- .Values.fullNameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default .Chart.Name .Values.fullNameOverride }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "external-secrets.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "external-secrets.labels" -}}
helm.sh/chart: {{ include "external-secrets.chart" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app: prometheus
{{- end }}

{{/*
Return the appropriate apiVersion for rbac.
*/}}
{{- define "external-secrets.apiVersion" -}}
{{- if $.Capabilities.APIVersions.Has "external-secrets.io/v1beta1" }}
{{- print "external-secrets.io/v1beta1" }}
{{- else }}
{{- print "external-secrets.io/v1alpha1" }}
{{- end }}
{{- end }}

{{/*
Allow the release namespace to be overridden for multi-namespace deployments in combined charts
*/}}
{{- define "external-secrets.namespace" -}}
{{- if .Values.namespaceOverride }}
{{- print .Values.namespaceOverride }}
{{- else }}
{{- print .Release.Namespace }}
{{- end }}
{{- end }}