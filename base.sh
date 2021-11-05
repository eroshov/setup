#!/bin/bash

export DEBIAN_FRONTEND=noninteractive
INSTALL_OPTIONS="-y"

apt update

apt install ${INSTALL_OPTIONS} \
  xinit \
  i3 \
  konsole \
  pulseaudio \
  pavucontrol

echo \
"if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  exec startx
fi" \
>> ~/.profile
