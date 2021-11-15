#!/bin/bash
# execute:
# ./install.sh name

cp $1 -r /usr/share/plymouth/themes
plymouth-set-default-theme $1 -R
