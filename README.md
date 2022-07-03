[![primary](https://github.com/trallnag/logsh/actions/workflows/primary.yaml/badge.svg)](https://github.com/trallnag/logsh/actions/workflows/primary.yaml)

# Logsh

Minimal POSIX compliant logging contained in a single Shell script made to be
sourced in every file you want to use the library's functions.

![screenshot-console-logsh](images/screenshot-console-logsh.png)

## Setup

Download [`log.sh`](log.sh) to whatever location you want to use the library. So
usually right next to the script from where `log.sh` is sourced from.

Alternatively, use [`update-log.sh`](update-log.sh) to download `log.sh`. It can
be used to download and place `log.sh` to the directory where `update-log.sh` is
located at. The script also allows downloading a specific commit reference.

Usually you will end up with many `log.sh` scattered around different places.

## Usage

Source `log.sh` from within scripts where you want to use it with a block like
this:

```sh
script_dir=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)

. "$script_dir/log.sh"
```

Now several functions for logging will be available.

- logdebug
- loginfo
- logsuccess
- logwarning
- logerror
- logexit

To find more information about the inner workings of `log.sh` or how to
configure it with environment variables, check out the script itself.

## Scope

In:

- Set of logging functions that are sourced from a single self-contained file.
- POSIX-compliant and only using features that are supported by `sh`.
- Configuration via environment variables.

Out:

- Being a "real" logging framework.

## Alternative

Just use this block of code:

```shell
_log() { printf '%b[%s] %s%b\n' "$3" "$2" "$1" '\033[0m' >&2; }
logexit() { _log "$1" "ERROR" '\033[31m'; exit 1; }
logerror() { _log "$1" "ERROR" '\033[31m'; }
logwarning() { _log "$1" "WARNING" '\033[33m'; }
logsuccess() { _log "$1" "SUCCESS" '\033[32m'; }
loginfo() { _log "$1" "INFO" '\033[34m'; }
logdebug() { _log "$1" "DEBUG" '\033[36m'; }
```
