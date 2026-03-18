#!/bin/bash
set -e

echo "Running Snyk IaC Scan..."

if snyk iac test --severity-threshold=critical; then
    echo "✅ No critical vulnerabilities found"
else
    echo "❌ Critical vulnerabilities detected"
    exit 1
fi