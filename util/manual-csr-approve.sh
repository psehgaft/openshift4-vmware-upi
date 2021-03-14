#!/bin/bash
oc get csr -ojson | jq -r '.items[] | select(.status=={}) | .metadata.name' | xargs --no-run-if-empty oc adm certificate approve
