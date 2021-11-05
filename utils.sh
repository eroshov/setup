#!/bin/bash

export DEBIAN_FRONTEND=noninteractive
INSTALL_OPTIONS="-y"

apt update

apt install ${INSTALL_OPTIONS} \
  xclip \
  xinput \
  xserver-xorg-input-evdev
