#!/bin/bash

export DEBIAN_FRONTEND=noninteractive
INSTALL_OPTIONS="-y"

apt update

apt install ${INSTALL_OPTIONS} \
  g++ \
  gdb \
  strace \
  python3 \
  python3-dev

snap install \
  --classic cmake

# peda
git clone https://github.com/longld/peda.git /usr/local/src/peda
echo "source /usr/local/src/peda/peda.py" >> ~/.gdbinit
echo "set disassembly-flavor att" >> ~/.gdbinit
