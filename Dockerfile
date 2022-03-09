FROM envoyproxy/envoy:v1.20-latest

ENV GRPC_APP_HOST ""

COPY envoy.yaml /tmpl/envoy.yaml.tmpl
COPY docker-entrypoint.sh /

RUN chmod 500 /docker-entrypoint.sh

RUN apt-get update && \
    apt-get install gettext -y

ENTRYPOINT ["/docker-entrypoint.sh"]