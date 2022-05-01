#!/bin/sh

DEFAULT_SSH_URL=ssh
DETECTED_SSH_URL=$(grep ssh_path secret_ssh.tf | awk '{print $3}' | tr -d '"')

curl "${VAULT_ADDR}/v1/${DETECTED_SSH_URL:-$DEFAULT_SSH_URL}/public_key"
