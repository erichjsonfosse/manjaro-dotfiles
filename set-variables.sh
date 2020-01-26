#!/bin/bash

######################### Directories ##########################
BASEDIR=$(dirname "$0")
export BASEDIR

CONFIGDIR="$BASEDIR/config"
export CONFIGDIR
ALIASESDIR="$CONFIGDIR/aliasess"
export ALIASESDIR

INSTALLDIR="$BASEDIR/install"
export INSTALLDIR
######################### Directories ##########################

######################### HOMEDIR ##########################
LOGNAME=$(logname)
export LOGNAME
HOMEDIR=$(eval echo ~"$LOGNAME")
export HOMEDIR
######################### HOMEDIR ##########################

GITCONFIGFILE="$HOMEDIR/.gitconfig"
export GITCONFIGFILE

OHMYZSHFOLDER="$HOMEDIR/.oh-my-zsh"
export OHMYZSHFOLDER
ZSHRCFILE="$HOMEDIR/.zshrc"
export ZSHRCFILE
