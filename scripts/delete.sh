#!/bin/bash
set -euo pipefail

# This runner creates no customer resources. Deletion is intentionally a no-op.
printf '%s\n' 'No customer resources to delete.'
