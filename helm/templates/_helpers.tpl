{{- define "quiz-backend.fullname" -}}
{{ .Release.Name }}
{{- end -}}

{{- define "quiz-backend.labels" -}}
app.kubernetes.io/name: {{ .Chart.Name }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end -}}
