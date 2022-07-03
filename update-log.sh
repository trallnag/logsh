#!/bin/sh

usage() {
    cat << EOF
Add or update the Logsh library.

This script will ensure that 'log.sh' can be found in the same
directory as the script itself. To use it, execute it.

<https://github.com/trallnag/logsh>

Usage:
  update-log.sh <reference>

Options:
  reference: Git reference to checkout. For example a tag. If this is not set,
    the latest commit on the default branch will be used.

  -h, --help: Print this help message.

Examples:
  update-log.sh v1.2.3
EOF
}

case $1 in -h | --help) usage && exit ;; esac

# Get source dir of script. <https://stackoverflow.com/a/29835459/7391331>.
# shellcheck disable=SC1007 # Incorrect warning.
source_dir=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)

# ------------------------------------------------------------------------------

if [ -z "$1" ]; then
  reference=master
else
  reference="$1"
fi

set -eu

dir=/tmp/git-trallnag-logsh

if ! [ -d "$dir/.git" ]; then
  echo "'$dir/.git' does not exist yet. Time to clone."
  echo "Clone 'https://github.com/trallnag/logsh.git' to '$dir'..."
  git clone https://github.com/trallnag/logsh.git "$dir"
else
  echo "'$dir/.git' already exists. No need to clone."
  echo "Pull 'https://github.com/trallnag/logsh.git' at '$dir'..."
  cd "$dir"
  git checkout master
  if ! git pull --all --tags; then
    cd ..
    rm -rf "$dir"
    git clone https://github.com/trallnag/logsh.git "$dir"
    cd "$dir"
  fi
fi

git config advice.detachedHead false
git checkout "$reference"

echo "Force copy '$dir/log.sh' to '$source_dir/'..."
cp --force "$dir/log.sh" "$source_dir/log.sh"

# ------------------------------------------------------------------------------
