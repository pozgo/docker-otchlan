#!/bin/sh
set -eu
export TERM=xterm

# Bash Colors
red=`tput setaf 1`
green=`tput setaf 2`
yellow=`tput setaf 3`
white=`tput setaf 7`
bold=`tput bold`
reset=`tput sgr0`
separator=$(echo && printf '=%.0s' {1..100} && echo)
# Functions
log() {
  if [[ "$@" ]]; then echo "${bold}${green}[OTCHLAN In Docker by Polinux `date +'%T'`]${reset} $@";
  else echo; fi
}

log "Starting Otchlan"

cd /otchlan
./otchlan
