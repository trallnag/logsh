# Asdf

Used for a bunch of CLI tools that are useful during local development and are
automatically triggered by pre-commit locally and within the CI/CD pipeline.

- <https://asdf-vm.com/>
- <https://github.com/asdf-vm/asdf>

It's recommened to have this installed locally, but it is not necessary. What's
more important is to have the tools installed listed in
[`../.tool-versions`](../.tool-versions), as these tools are used in the CI/CD
pipelines and locally by pre-commit.

Configured via [`../.tool-versions`](../.tool-versions).

If you do use asdf, make sure to have the correct plugins installed.

    asdf plugin add shfmt https://github.com/luizm/asdf-shfmt
    asdf plugin add shellcheck https://github.com/luizm/asdf-shellcheck
