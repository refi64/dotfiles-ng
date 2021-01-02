die() {
  echo "$@" >&2
  exit 1
}

set -e

which ansible >/dev/null 2>&1 || die 'you forgot to install ansible'

ANSIBLE_STDOUT_CALLBACK=default ansible-playbook -K \
  "$(dirname "$0")"/playbooks/bootstrap.yaml
