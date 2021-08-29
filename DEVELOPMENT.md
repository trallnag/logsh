# Development

## Pre-Commit

Used for maintaining pre-commit hooks.

* <https://pre-commit.com/>
* <https://github.com/pre-commit/pre-commit>

Pre-commit is configured via [`.pre-commit-config.yaml`](.pre-commit-config.yaml).
It should automatically run on every commit.

To trigger pre-commit manually, execute `pre-commit run --all-files`.

## ASDF

Used for maintaining specific runtime versions of CLI tools.

* <https://asdf-vm.com/>
* <https://github.com/asdf-vm/asdf>

Configured via `.tool-versions`. The CLI tools defined in this file are used
by pre-commit and the CI/CD pipeline.
