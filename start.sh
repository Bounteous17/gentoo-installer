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

#COLOR OUT
. ./lib/colorize.sh
#INIT CHCKS
. ./lib/checks.sh
#CREATE MENUS
. ./lib/dialogs.sh

read -p "Press enter to continue: "

#START INSTALL
. ./installer/*
. ./lib/installer.sh
