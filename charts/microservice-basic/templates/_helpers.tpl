{{/*
Expand the name of the chart.
*/}}
{{- define "microservice-basic.name" -}}
{{- default .Chart.Name .Values.name | trunc 63 | trimSuffix "-" | toString }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "microservice-basic.fullname" -}}
{{- if .Values.fullNameOverride }}
{{- .Values.fullNameOverride | trunc 63 | trimSuffix "-" | toString }}
{{- else }}
{{- $name := default .Chart.Name }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-"  | toString}}
{{- else }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" | toString }}
{{- end }}
{{- end }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "microservice-basic.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "microservice-basic.labels" -}}
helm.sh/chart: {{ include "microservice-basic.chart" . | quote  }}
{{ include "microservice-basic.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app: prometheus
{{- end }}

{{/*
Selector labels
*/}}
{{- define "microservice-basic.selectorLabels" -}}
app.kubernetes.io/name: {{ include "microservice-basic.name" . | quote }}
app.kubernetes.io/instance: {{ .Release.Name | quote }}
{{- end }}

{{/*
Create the name of the service account to use
*/}}
{{- define "microservice-basic.serviceAccountName" -}}
{{- if .Values.serviceAccount.create }}
{{- default (include "microservice-basic.fullname" .) .Values.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.serviceAccount.name }}
{{- end }}
{{- end }}

{{/*
Return the appropriate apiVersion for rbac.
*/}}
{{- define "microservice-basic.rbac.apiVersion" -}}
{{- if $.Capabilities.APIVersions.Has "rbac.authorization.k8s.io/v1" }}
{{- print "rbac.authorization.k8s.io/v1" }}
{{- else }}
{{- print "rbac.authorization.k8s.io/v1beta1" }}
{{- end }}
{{- end }}
{{/*
Return the appropriate apiVersion for ingress.
*/}}
{{- define "microservice-basic.ingress.apiVersion" -}}
{{- if and ($.Capabilities.APIVersions.Has "networking.k8s.io/v1") (semverCompare ">= 1.19-0" .Capabilities.KubeVersion.Version) }}
{{- print "networking.k8s.io/v1" }}
{{- else if $.Capabilities.APIVersions.Has "networking.k8s.io/v1beta1" }}
{{- print "networking.k8s.io/v1beta1" }}
{{- else }}
{{- print "extensions/v1beta1" }}
{{- end }}
{{- end }}
{{/*
Return the appropriate apiVersion for Horizontal Pod Autoscaler.
*/}}
{{- define "microservice-basic.hpa.apiVersion" -}}
{{- if $.Capabilities.APIVersions.Has "autoscaling/v2/HorizontalPodAutoscaler" }}
{{- print "autoscaling/v2" }}
{{- else if $.Capabilities.APIVersions.Has "autoscaling/v2beta2/HorizontalPodAutoscaler" }}
{{- print "autoscaling/v2beta2" }}
{{- else }}
{{- print "autoscaling/v2beta1" }}
{{- end }}
{{- end }}
{{/*
Return the appropriate apiVersion for podDisruptionBudget.
*/}}
{{- define "microservice-basic.podDisruptionBudget.apiVersion" -}}
{{- if $.Capabilities.APIVersions.Has "policy/v1/PodDisruptionBudget" }}
{{- print "policy/v1" }}
{{- else }}
{{- print "policy/v1beta1" }}
{{- end }}
{{- end }}
{{/*
Return if ingress is stable.
*/}}
{{- define "microservice-basic.ingress.isStable" -}}
{{- eq (include "microservice-basic.ingress.apiVersion" .) "networking.k8s.io/v1" }}
{{- end }}
{{/*
Return if ingress supports ingressClassName.
*/}}
{{- define "microservice-basic.ingress.supportsIngressClassName" -}}
{{- or (eq (include "microservice-basic.ingress.isStable" .) "true") (and (eq (include "microservice-basic.ingress.apiVersion" .) "networking.k8s.io/v1beta1") (semverCompare ">= 1.18-0" .Capabilities.KubeVersion.Version)) }}
{{- end }}
{{/*
Return if ingress supports pathType.
*/}}
{{- define "microservice-basic.ingress.supportsPathType" -}}
{{- or (eq (include "microservice-basic.ingress.isStable" .) "true") (and (eq (include "microservice-basic.ingress.apiVersion" .) "networking.k8s.io/v1beta1") (semverCompare ">= 1.18-0" .Capabilities.KubeVersion.Version)) }}
{{- end }}