#!/usr/bin/env bash

# Install language server for neovim

# Json
which vscode-json-languageserver || npm i -g vscode-json-languageserver

# Bash
which bash-language-server || npm i -g bash-language-server

# Yaml
which yaml-language-server || npm i -g yaml-language-server

# Typescript
which typescript-language-server || npm i -g typescript-language-server
