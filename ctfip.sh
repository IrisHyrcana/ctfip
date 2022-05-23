#!/bin/bash

IDENTIFIER="ctfip script environment variable"
TARGET="$HOME/.zshrc"
sed -i "/$IDENTIFIER/c export ctfip=\"$1\" # $IDENTIFIER" $TARGET
grep "$1" $TARGET -q && echo "successfully exported $1 to ctfip"
#source $TARGET
