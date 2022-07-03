#!/bin/sh

shfmt \
  --binary-next-line \
  --diff \
  --indent=2 \
  --keep-padding \
  --list \
  --posix \
  --simplify \
  --space-redirects \
  --write \
  log.sh update-log.sh scripts/
