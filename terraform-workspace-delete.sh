#!/bin/sh

SELF=$(realpath "${0}")

# shellcheck source=./config/terraform-defaults.sh
. "$(dirname "${SELF}")/config/terraform-defaults.sh"

# shellcheck disable=SC2068
terraform \
  workspace \
  delete \
  -lock=true \
  -lock-timeout="${TERRAFORM_LOCK_TIMEOUT}" \
  ${@}
