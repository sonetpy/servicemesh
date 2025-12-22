#!/bin/bash
GATEWAY_URL='retry.local.test'
curl -s \
  -w 'HTTP code: %{http_code}\nTime: %{time_total}s\n' \
  "${GATEWAY_URL}/resilience-retry"
