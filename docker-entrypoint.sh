#!/bin/sh
set -e

echo "Generating envoy.yaml config file..."
cat /tmpl/envoy.yaml.tmpl | envsubst \$GRPC_APP_HOST,\$OTHER_ENV_VAR_TO_REPLACE > /etc/envoy.yaml

echo "Starting Envoy..."
/usr/local/bin/envoy -c /etc/envoy.yaml
