#!/bin/bash

set -ex

peru sync
SYSTEMD_LOG_LEVEL=debug \
  systemd-tmpfiles --create "$(dirname "$0" | xargs realpath)"/files.conf
