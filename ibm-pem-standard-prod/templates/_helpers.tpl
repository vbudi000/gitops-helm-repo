{{/*
Expand the name of the chart.
*/}}
{{- define "ibm-pem-standard.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "ibm-pem-standard.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels for migrator pod
*/}}
{{- define "migrator-pod.labels" -}}
helm.sh/chart: {{ include "ibm-pem-standard.chart" . }}
release: partnerEngagementStandard
{{ include "migrator.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Common labels for sso-migrator pod
*/}}
{{- define "sso-migrator-pod.labels" -}}
helm.sh/chart: {{ include "ibm-pem-standard.chart" . }}
release: partnerEngagementStandard
{{ include "sso-migrator.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Common labels for dbutils pod
*/}}
{{- define "dbutils-pod.labels" -}}
helm.sh/chart: {{ include "ibm-pem-standard.chart" . }}
release: partnerEngagementStandard
{{ include "dbutils.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Common labels for pem pod
*/}}
{{- define "pem-pod.labels" -}}
helm.sh/chart: {{ include "ibm-pem-standard.chart" . }}
release: partnerEngagementStandard
{{ include "pem.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Common labels for pp pod
*/}}
{{- define "pp-pod.labels" -}}
helm.sh/chart: {{ include "ibm-pem-standard.chart" . }}
release: partnerEngagementStandard
{{ include "pp.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Common labels for pr pod
*/}}
{{- define "pr-pod.labels" -}}
helm.sh/chart: {{ include "ibm-pem-standard.chart" . }}
release: partnerEngagementStandard
{{ include "pr.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Common labels for api pod
*/}}
{{- define "api-pod.labels" -}}
helm.sh/chart: {{ include "ibm-pem-standard.chart" . }}
release: partnerEngagementStandard
{{ include "api.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Common labels for agent pod
*/}}
{{- define "agent-pod.labels" -}}
helm.sh/chart: {{ include "ibm-pem-standard.chart" . }}
release: partnerEngagementStandard
{{ include "agent.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Common labels for purge pod
*/}}
{{- define "purge-pod.labels" -}}
helm.sh/chart: {{ include "ibm-pem-standard.chart" . }}
release: partnerEngagementStandard
{{ include "purge.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels for migrator pod
*/}}
{{- define "migrator.selectorLabels" -}}
app.kubernetes.io/name: {{ .Release.Name }}-migrator-app
app.kubernetes.io/instance: {{ .Release.Name }}-migrator
{{- end }}

{{/*
Selector labels for migrator pod
*/}}
{{- define "sso-migrator.selectorLabels" -}}
app.kubernetes.io/name: {{ .Release.Name }}-sso-migrator-app
app.kubernetes.io/instance: {{ .Release.Name }}-sso-migrator
{{- end }}

{{/*
Selector labels for dbutils pod
*/}}
{{- define "dbutils.selectorLabels" -}}
app.kubernetes.io/name: {{ .Release.Name }}-dbutils-app
app.kubernetes.io/instance: {{ .Release.Name }}-dbutils
{{- end }}

{{/*
Selector labels for pem pod
*/}}
{{- define "pem.selectorLabels" -}}
app.kubernetes.io/name: {{ .Release.Name }}-pem-app
app.kubernetes.io/instance: {{ .Release.Name }}-pem
{{- end }}

{{/*
Selector labels for pp pod
*/}}
{{- define "pp.selectorLabels" -}}
app.kubernetes.io/name: {{ .Release.Name }}-pp-app
app.kubernetes.io/instance: {{ .Release.Name }}-pp
{{- end }}

{{/*
Selector labels for pr pod
*/}}
{{- define "pr.selectorLabels" -}}
app.kubernetes.io/name: {{ .Release.Name }}-pr-app
app.kubernetes.io/instance: {{ .Release.Name }}-pr
{{- end }}

{{/*
Selector labels for api pod
*/}}
{{- define "api.selectorLabels" -}}
app.kubernetes.io/name: {{ .Release.Name }}-api-app
app.kubernetes.io/instance: {{ .Release.Name }}-api
{{- end }}

{{/*
Selector labels for agent pod
*/}}
{{- define "agent.selectorLabels" -}}
app.kubernetes.io/name: {{ .Release.Name }}-agent-app
app.kubernetes.io/instance: {{ .Release.Name }}-agent
{{- end }}

{{/*
Selector labels for purge pod
*/}}
{{- define "purge.selectorLabels" -}}
app.kubernetes.io/name: {{ .Release.Name }}-purge-app
app.kubernetes.io/instance: {{ .Release.Name }}-purge
{{- end }}

{{/*
Common labels for prod pcm pod
*/}}
{{- define "prodpcm-pod.labels" -}}
helm.sh/chart: {{ include "ibm-pem-standard.chart" . }}
release: partnerEngagementStandard
{{ include "prodpcm.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Common labels for prod cm api pod
*/}}
{{- define "prodpcmapi-pod.labels" -}}
helm.sh/chart: {{ include "ibm-pem-standard.chart" . }}
release: partnerEngagementStandard
{{ include "prodpcmapi.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Common labels for nonprod cm api pod
*/}}
{{- define "nonprodpcmapi-pod.labels" -}}
helm.sh/chart: {{ include "ibm-pem-standard.chart" . }}
release: partnerEngagementStandard
{{ include "nonprodpcmapi.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels for prod cm api pod
*/}}
{{- define "prodpcmapi.selectorLabels" -}}
app.kubernetes.io/name: {{ .Release.Name }}-prodcm-api-app
app.kubernetes.io/instance: {{ .Release.Name }}-prodpcm-api
{{- end }}

{{/*
Selector labels for nonprod cm api pod
*/}}
{{- define "nonprodpcmapi.selectorLabels" -}}
app.kubernetes.io/name: {{ .Release.Name }}-nonprodcm-api-app
app.kubernetes.io/instance: {{ .Release.Name }}-nonprodpcm-api
{{- end }}

{{/*
Common labels for nonprod pcm pod
*/}}
{{- define "nonprodpcm-pod.labels" -}}
helm.sh/chart: {{ include "ibm-pem-standard.chart" . }}
release: partnerEngagementStandard
{{ include "nonprodpcm.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}


{{/*
Selector labels for prod pcm pod
*/}}
{{- define "prodpcm.selectorLabels" -}}
app.kubernetes.io/name: {{ .Release.Name }}-prodpcm-app
app.kubernetes.io/instance: {{ .Release.Name }}-prodpcm
{{- end }}


{{/*
Selector labels for nonprod pcm pod
*/}}
{{- define "nonprodpcm.selectorLabels" -}}
app.kubernetes.io/name: {{ .Release.Name }}-nonprodpcm-app
app.kubernetes.io/instance: {{ .Release.Name }}-nonprodpcm
{{- end }}

{{/*
Common labels for pem pod
*/}}
{{- define "test-pod.labels" -}}
helm.sh/chart: {{ include "ibm-pem-standard.chart" . }}
release: partnerEngagementStandard
{{ include "test.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels for pem pod
*/}}
{{- define "test.selectorLabels" -}}
app.kubernetes.io/name: {{ .Release.Name }}-test-app
app.kubernetes.io/instance: {{ .Release.Name }}-test
{{- end }}




{{/*
Create pod affinity
*/}}
{{- define "ibmpem.affinity" -}}
nodeAffinity:
  requiredDuringSchedulingIgnoredDuringExecution:
    nodeSelectorTerms:
      - matchExpressions:
          - key: kubernetes.io/arch
            operator: In
            values:
              - {{ .Values.arch }}
{{- end }}




{{/*
Create productID, product name, version, productMetric, productChargedContainers for metering and licensing purpose.
*/}}
{{- define "ibmpem.metering.productName" -}}
{{ range ( .Files.Lines "product.info" ) -}}
{{- if regexMatch "^productName=.*" . -}}
{{- substr 12 (len .) . -}}
{{- end -}}
{{- end -}}
{{- end -}}
{{- define "ibmpem.metering.productId" -}}
{{ range ( .Files.Lines "product.info" ) -}}
{{- if regexMatch "^productId=.*" . -}}
{{- substr 10 (len .) . -}}
{{- end -}}
{{- end -}}
{{- end -}}
{{- define "ibmpem.metering.productVersion" -}}
{{ range ( .Files.Lines "product.info" ) -}}
{{- if regexMatch "^productVersion=.*" . -}}
{{- substr 15 (len .) . -}}
{{- end -}}
{{- end -}}
{{- end -}}
{{- define "ibmpem.metering.productMetric" -}}
{{ range ( .Files.Lines "product.info" ) -}}
{{- if regexMatch "^productMetric=.*" . -}}
{{- substr 14 (len .) . -}}
{{- end -}}
{{- end -}}
{{- end -}}

{{- define "ibmpem.metering.productChargedContainers" -}}
{{ range ( .Files.Lines "product.info" ) -}}
{{- if regexMatch "^productChargedContainers=.*" . -}}
{{- substr 25 (len .) . -}}
{{- end -}}
{{- end -}}
{{- end -}}
