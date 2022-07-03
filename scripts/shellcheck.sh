#!/bin/sh

shellcheck \
  --check-sourced \
  --color=always \
  --format=tty \
  --shell=sh \
  log.sh update-log.sh scripts/*
