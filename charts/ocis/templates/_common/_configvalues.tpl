{{/* vim: set filetype=mustache: */}}
{{/*
Simple secret and configmap name definitions.

All take the scope as the first and only parameter.
*/}}
{{- define "secrets.adminUser" -}}
{{ .Values.secretRefs.adminUserSecretRef | default "admin-user" | quote }}
{{- end -}}

{{- define "secrets.idpSecret" -}}
{{ .Values.secretRefs.idpSecretRef | default "idp-secrets" | quote }}
{{- end -}}

{{- define "secrets.jwtSecret" -}}
{{ .Values.secretRefs.jwtSecretRef | default "jwt-secret" | quote }}
{{- end -}}

{{- define "secrets.gdprExportClientSecret" -}}
{{ required "gdprExportClientSecretRef can't be autogenerated" .Values.secretRefs.gdprExportClientSecretRef | quote }}
{{- end -}}

{{- define "secrets.ldapCASecret" -}}
{{ .Values.secretRefs.ldapCaRef | default "ldap-ca" | quote }}
{{- end -}}

{{- define "secrets.ldapCertSecret" -}}
{{ .Values.secretRefs.ldapCertRef | default "ldap-cert" | quote }}
{{- end -}}

{{- define "secrets.ldapBindSecret" -}}
{{ .Values.secretRefs.ldapSecretRef | default "ldap-bind-secrets" | quote }}
{{- end -}}

{{- define "secrets.machineAuthAPIKeySecret" -}}
{{ .Values.secretRefs.machineAuthApiKeySecretRef | default "machine-auth-api-key" | quote }}
{{- end -}}

{{- define "secrets.messagingSystemCASecret" -}}
{{ required "messagingSystemCASecret can't be autogenerated" .Values.secretRefs.messagingSystemCaRef | quote }}
{{- end -}}

{{- define "secrets.notificationsSMTPSecret" -}}
{{ required "notificationsSMTPSecret can't be autogenerated" .Values.secretRefs.notificationsSmtpSecretRef | quote }}
{{- end -}}

{{- define "secrets.storageSystemJWTSecret" -}}
{{ .Values.secretRefs.storagesystemJwtSecretRef | default "storage-system-jwt-secret" | quote }}
{{- end -}}

{{- define "secrets.storageSystemSecret" -}}
{{ .Values.secretRefs.storagesystemSecretRef | default "storage-system" | quote }}
{{- end -}}

{{- define "secrets.thumbnailsSecret" -}}
{{ .Values.secretRefs.thumbnailsSecretRef | default "thumbnails-transfer-secret" | quote }}
{{- end -}}

{{- define "secrets.transferSecret" -}}
{{ .Values.secretRefs.transferSecretSecretRef | default "transfer-secret" | quote }}
{{- end -}}

{{- define "secrets.s3CredentialsSecret" -}}
{{ .Values.secretRefs.s3CredentialsSecretRef | default "s3-credentials-secret" | quote }}
{{- end -}}

{{- define "config.storageUsers" -}}
{{ .Values.configRefs.storageusersConfigRef | default "storage-users" | quote }}
{{- end -}}

{{- define "config.graph" -}}
{{ .Values.configRefs.graphConfigRef | default "graph" | quote }}
{{- end -}}
