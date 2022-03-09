# docker-envoy-proxy

## Introduction

* based on https://hub.docker.com/r/envoyproxy/envoy
* allowing to specify runtime environment variables to configure envoy

## Configuration

The following environment variables are supported:

* `GRPC_APP_HOST` - the host the envoy proxy should proxy the traffic (e.g. `original.domain.com` - do not specify the protocol)
