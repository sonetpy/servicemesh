#!/bin/bash

#GATEWAY_URL=`oc get route istio-ingressgateway -n istio-system -o template --template '{{ "http://" }}{{ .spec.host }}'`
GATEWAY_URL='resilience.local.test'
curl  -s \
  -w 'HTTP code: %{http_code}\nTime: %{time_total}s\n' \
  "${GATEWAY_URL}/resilience-timeout"
