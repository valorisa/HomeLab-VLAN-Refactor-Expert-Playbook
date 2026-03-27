#!/usr/bin/env bash
set -euo pipefail

QNAP_HOST="10.20.10.60"
QNAP_USER="backup"
QNAP_PASSWORD="${QNAP_PASSWORD:-ChangeMe}"

curl -sk "https://${QNAP_HOST}:443/cgi-bin/authLogin.cgi" \
  -d "user=${QNAP_USER}&pwd=${QNAP_PASSWORD}" >/tmp/qnap_auth.xml

AUTH_SID=$(grep -oP "(?<=<authSid>).*?(?=</authSid>)" /tmp/qnap_auth.xml)

curl -sk "https://${QNAP_HOST}:443/cgi-bin/power.cgi?sid=${AUTH_SID}&func=shutdown"

rm -f /tmp/qnap_auth.xml
echo "[INFO] QNAP shutdown command sent."
