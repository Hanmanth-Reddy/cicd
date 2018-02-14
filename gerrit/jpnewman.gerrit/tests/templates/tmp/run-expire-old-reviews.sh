#!/bin/bash

source /opt/jeepyb/venv/bin/activate
expire-old-reviews 'Gerrit Code Review' \
  /var/gerrit/review/etc/ssh_host_rsa_key \
  --as_user gerrit
deactivate
