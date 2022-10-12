#!/usr/bin/env bash

for packages_file in "$@"; do
  paru -S - < $packages_file
done
