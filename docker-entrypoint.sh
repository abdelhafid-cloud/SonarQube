#!/bin/bash
set -e

mkdir -p /opt/sonarqube/data
mkdir -p /opt/sonarqube/extensions
mkdir -p /opt/sonarqube/logs
mkdir -p /opt/sonarqube/temp

chown -R 1000:1000 /opt/sonarqube || true
chmod -R 775 /opt/sonarqube || true

exec /opt/sonarqube/docker/entrypoint.sh
