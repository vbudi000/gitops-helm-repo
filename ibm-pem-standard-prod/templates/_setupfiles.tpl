{{/*
Common labels for migrator pod
*/}}
{{- define "ibmpemstandard.seas" -}}
    servers.seas_truststore_name={{ .Values.ssoSeas.truststoreName }}
    servers.seas_truststore_password="$SSO_TRUSTSTOREPASSWORD"
    servers.seas_truststore_alias={{ .Values.ssoSeas.truststoreAlias }}
    servers.seas_truststore_type={{ .Values.ssoSeas.truststoreType }}
    servers.seas_keystore_name={{ .Values.ssoSeas.keystoreName }}
    servers.seas_keystore_password="$SSO_KEYSTOREPASSWORD"
    servers.seas_keystore_type={{ .Values.ssoSeas.keystoretype }}
    servers.seas_keystore_alias={{ .Values.ssoSeas.keystoreAlias }}
{{- end }}

{{/*
Common labels for sso migration pod
*/}}
{{- define "ibmpemstandard.ssomigration" -}}
ssomigration.migration_action={{ .Values.ssomigration.migrationAction }}
ssomigration.sponsor_context={{ .Values.ssomigration.sponsorContext }}
ssomigration.org_data_filename={{ .Values.ssomigration.orgDataFilename }}
ssomigration.user_data_filename="{{ .Values.ssomigration.userDataFilename }}"

{{- end }}

{{- define "ibmpemstandard.wmq" -}}
servers.channel={{ .Values.wmq.channel | quote }}
servers.connection_name_list={{ .Values.wmq.connection_name_list | quote }}
servers.queue_manager={{ .Values.wmq.queue_manager | quote }}
servers.username={{ .Values.wmq.username | quote }}
servers.password="$WMQ_SERVERS_PASSWORD"
servers.wmq_provisioner_request_queue_manager={{ .Values.wmq.wmq_provisioner_request_queue_manager | quote }}
servers.wmq_provisioner_response_queue_manager={{ .Values.wmq.wmq_provisioner_response_queue_manager | quote }}
servers.wmq_provisioner_request_queue_name={{ .Values.wmq.wmq_provisioner_request_queue_name | quote }}
servers.wmq_provisioner_response_queue_name={{ .Values.wmq.wmq_provisioner_response_queue_name | quote }}
servers.ssl_cipher_suite={{ .Values.wmq.ssl_cipher_suite | quote }}
{{ end }}

{{/*
Common labels for db setup
*/}}
{{- define "ibmpemstandard.dbsetup" -}}
    accept_license="{{.Values.dbsetup.setupfile.accept_license }}"
    proxy_host="{{.Values.dbsetup.setupfile.proxy_host }}"
    proxy_port="{{.Values.dbsetup.setupfile.proxy_port }}"
    proxy_user_name="{{.Values.dbsetup.setupfile.proxy_user_name }}"
    proxy_password="$PROXY_PASSWORD"
    proxy_protocol="{{.Values.dbsetup.setupfile.proxy_protocol }}"
    customer_id="{{.Values.dbsetup.setupfile.customer_id }}"
    db_type="{{.Values.dbsetup.setupfile.db_type }}"
    ssl_connection="{{.Values.dbsetup.setupfile.ssl_connection }}"
    db_port="{{.Values.dbsetup.setupfile.db_port }}"
    db_host="{{.Values.dbsetup.setupfile.db_host }}"
    db_name="{{.Values.dbsetup.setupfile.db_name }}"
    db_schema="{{.Values.dbsetup.setupfile.db_schema }}"
    db_user="{{.Values.dbsetup.setupfile.db_user }}"
    db_password="$DB_PASSWORD"
    db_driver="{{.Values.dbsetup.setupfile.db_driver }}"
    db_max_pool_size="{{.Values.dbsetup.setupfile.db_max_pool_size }}"
    db_min_pool_size="{{.Values.dbsetup.setupfile.db_min_pool_size }}"
    db_aged_timeout="{{.Values.dbsetup.setupfile.db_aged_timeout }}"
    db_max_idle_time="{{.Values.dbsetup.setupfile.db_max_idle_time }}"
    db_sslTrustStoreName="{{.Values.dbsetup.setupfile.db_sslTrustStoreName }}"
    db_sslTrustStorePassword="$DB_SSLTRUSTSTORE_PASSWORD"
    db_mssql_hostNameInCertificate="{{.Values.dbsetup.setupfile.db_mssql_hostNameInCertificate }}"
    db_mssql_sslProtocol="{{.Values.dbsetup.setupfile.db_mssql_sslProtocol }}"
    testmode_db_port="{{ .Values.dbsetup.setupfile.testmode_db_port }}"
    testmode_db_host="{{ .Values.dbsetup.setupfile.testmode_db_host }}"
    testmode_db_name="{{ .Values.dbsetup.setupfile.testmode_db_name }}"
    testmode_db_schema="{{ .Values.dbsetup.setupfile.testmode_db_schema }}"
    testmode_db_user="{{ .Values.dbsetup.setupfile.testmode_db_user }}"
    testmode_db_password="$TESTMODE_DB_PASSWORD"
    testmode_db_driver="{{ .Values.dbsetup.setupfile.testmode_db_driver }}"
    testmode_db_max_pool_size="{{ .Values.dbsetup.setupfile.testmode_db_max_pool_size }}"
    testmode_db_min_pool_size="{{ .Values.dbsetup.setupfile.testmode_db_min_pool_size }}"
    testmode_db_aged_timeout="{{ .Values.dbsetup.setupfile.testmode_db_aged_timeout }}"
    testmode_db_max_idle_time="{{ .Values.dbsetup.setupfile.testmode_db_max_idle_time }}"
    testmode_db_sslTrustStoreName="{{ .Values.dbsetup.setupfile.testmode_db_sslTrustStoreName }}"
    testmode_db_sslTrustStorePassword="$TESTDB_SSLTRUSTSTORE_PASSWORD"
    testmode_db_mssql_hostNameInCertificate="{{.Values.dbsetup.setupfile.testmode_db_mssql_hostNameInCertificate }}"
    testmode_db_mssql_sslProtocol="{{.Values.dbsetup.setupfile.testmode_db_mssql_sslProtocol }}"
    migrator.default_sponsor="{{ .Values.dbsetup.setupfile.migrator.default_sponsor }}"
{{- end }}

{{/*
Common labels for generic properties
*/}}
{{- define "ibmpemstandard.serversetup" -}}
servers.ssl_protocol="{{ .Values.setupfile.servers.ssl_protocol }}"
servers.enabled_ciphers="{{ .Values.setupfile.servers.enabled_ciphers }}"
    {{ if .Values.setupfile.servers.enableConsoleLogs }}
servers.logs_logger="console"
    {{ else }}
servers.logs_logger="file"
    {{ end }}
{{- end }}
