# Pre-Commit

Used for maintaining Git hooks.

- <https://pre-commit.com/>
- <https://github.com/pre-commit/pre-commit>

Whenever this repository is cloned, the following commands must be executed:

    pre-commit install --install-hooks
    pre-commit install --hook-type commit-msg

Pre-commit should now run automatically on every commit. It is also executed via
GitHub Actions and the respective pipelines should fail on hook fails.

Note that several hooks in this repo depend on tools that must already be
available on the system. These tools are covered in
[`../.tool-versions`](../.tool-versions). For more information, check
[`./asdf.md`](./asdf.md).

Pre-commit is configured via
[`../.pre-commit-config.yaml`](../.pre-commit-config.yaml).

## Cheat Sheet

Run pre-commit against all files:

    pre-commit run -a

Run single hook against all files:

    pre-commit run <hook> -a
