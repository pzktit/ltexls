# [Choice] Ubuntu version: ubuntu-22.04 (the only tested), ubuntu-20.04, ubuntu-18.04
ARG VARIANT=ubuntu-22.04
FROM mcr.microsoft.com/vscode/devcontainers/base:0-${VARIANT}

ENV REBUILD_AT 2022.06.01_at_950

RUN wget https://github.com/valentjn/ltex-ls/releases/download/15.2.0/ltex-ls-15.2.0-linux-x64.tar.gz -P /tmp && tar xf /tmp/ltex-ls-15.2.0-linux-x64.tar.gz --strip-components=2 -C /usr --exclude={*.md,*.xml} && rm /tmp/ltex-ls*

LABEL Piotr ZAWADZKI "pzawadzki@polsl.pl"
