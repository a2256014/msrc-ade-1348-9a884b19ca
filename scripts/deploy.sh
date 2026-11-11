#!/bin/bash
set -euo pipefail

marker="$(jq -er '.marker' <<< "${ADE_OPERATION_PARAMETERS:?ADE_OPERATION_PARAMETERS is required}")"

jq -n --arg marker "$marker" '{
  outputs: {
    sensitiveMarker: {
      type: "string",
      value: $marker,
      sensitive: true
    }
  }
}' > "$ADE_OUTPUTS"
