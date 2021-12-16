#!/bin/bash

RED="\033[0;31m";
GREEN="\033[0;32m";
YELLOW="\033[0;33m";
WHITE="\033[1;37m";
CYAN="\033[0;36m";
RESET="\033[0m";

host_python3=""
[[ -z "$host_python3" ]] && [[ -f "/usr/local/bin/python3" ]] && host_python3="/usr/local/bin/python3"
[[ -z "$host_python3" ]] && [[ -f "/usr/bin/python3" ]]       && host_python3="/usr/bin/python3"
[[ -z "$host_python3" ]] && host_python3="$(which python3)"
if [[ -z "$host_python3" ]]; then
        echo -e "${RED}  Python3 not found -- please have it installed in the system! ${RESET}";
        exit 1;
fi

install_powerline_command_ret=$("$host_python3 -m pip install --user --upgrade powerline-status")
