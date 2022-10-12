#!/usr/bin/env bash

which paru && exit 0

git clone https://aur.archlinux.org/paru.git \
  && cd paru \
  && makepkg -si \
  && cd .. \
  && rm -rf paru
