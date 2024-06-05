{{/*
Expand the name of the chart.
*/}}
{{- define "homechart.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "homechart.selectorLabels" -}}
app: nginx
{{- end }}

{{/* configmap items */}}
{{- define "homechart.configmapItems" -}}
- key: file
  path: file
{{- end }}
