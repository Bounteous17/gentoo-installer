#!/bin/bash

####################################################################
#                                                                  #
# gentoo-dialog-installer - Unofficial Installer for Gentoo Linux  #
#                                                                  #
# AUTHOR                                                           #
# bounteous17@protonmail.com                                       #
#                                                                  #
####################################################################

VERSION="v0.0"
DEBUG=true

#COLOR OUT
. ./lib/colorize.sh
#INIT CHCKS
. ./lib/checks.sh
#CREATE MENUS
. ./lib/dialogs.sh

. ./utils/main.sh
read -p "Press enter to continue: "

#START INSTALL
. ./installer/net.sh
. ./installer/cpu.sh
. ./lib/installer.sh
