{{/*
Expand the name of the chart.
*/}}
{{- define "tailing-sidecar-operator.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "tailing-sidecar-operator.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default .Chart.Name .Values.nameOverride }}
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
{{- define "tailing-sidecar-operator.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "tailing-sidecar-operator.labels" -}}
helm.sh/chart: {{ include "tailing-sidecar-operator.chart" . }}
{{ include "tailing-sidecar-operator.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "tailing-sidecar-operator.selectorLabels" -}}
app.kubernetes.io/name: {{ include "tailing-sidecar-operator.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
Configmap name
*/}}
{{- define "tailing-sidecar-operator.configMap.name" -}}
{{- printf "%s-%s" .Release.Name "operator-config" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Tailing sidecar configmap name
*/}}
{{- define "tailing-sidecar.configMap.name" -}}
{{- printf "%s-%s" .Release.Name "sidecar-config" | trunc 63 | trimSuffix "-" }}
{{- end }}
