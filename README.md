# Logsh

A minimal POSIX compliant logging library contained in a single Shell script
made to be sourced in every file you want to use the library's functions.

![screenshot-console-logsh](images/screenshot-console-logsh.png)

## Meta

Currently maintained and in use. More features might be added over time.

I created this project because from time to time I want my Shell scripts to
spit out nice colorful logs to `stderr` with neither relying on any external
fully fledged logging framework or a few functions copied into the scripts
themselves. That said, `log.sh` is not meant to replace real logging. But
`log.sh` can be helpful for example in making CI job logs more readable.

## Usage

Download [`log.sh`](log.sh) to whatever location you want to use the library.
So usually right next to the script from where `log.sh` is sourced from.

The script [`update-logsh`](update-logsh) can be used to download and place
`log.sh` to the directory where `update-logsh` is located at. [`update-logsh`](update-logsh)
also allows downloading a specific commit reference. Usually you will end up
with many `log.sh` scattered around different places.

Source `log.sh` from within scripts with a block like this:

```sh
# Get source dir of script. <https://stackoverflow.com/a/29835459/7391331>.
script_dir=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)

. "$script_dir/log.sh"
```

To find more information about the inner workings of `log.sh` or how to
configure it with environment variables, check out the script itself.
