#!/bin/bash

# Reset
Color_Off='\033[0m'       # Text Reset

# Regular Colors
Black='\033[0;30m'        # Black
Red='\033[0;31m'          # Red
Green='\033[0;32m'        # Green


PROXY_FILE="/etc/apt/apt.conf.d/95proxies";
ENV_FILE="/etc/environment";

is_proxy_on() {
	line=$(head -n 2 "${1}" | tail -n 1);
        if [[ "${line}" == "#"* ]]; then
		return 0
        else
		return 1
        fi
}

switch_proxy() {
	line=$(head -n 2 "${1}" | tail -n 1);
	if [[ "${line}" == "#"* ]]; then
		sudo sed -u -i s/#// "${1}";
	else
		sudo sed -u -i s/^/#/ "${1}";
	fi
}

switch_ssh_proxycommand() {
	if [[ -f ~/.ssh/config ]]; then
                mv ~/.ssh/config ~/.ssh/config.bak
		echo -e "\n${Red}ssh proxycommand disabled${Color_Off}\n"
		return 0
	fi

	if [[ -f ~/.ssh/config.bak ]]; then
		mv ~/.ssh/config.bak ~/.ssh/config
		echo -e "\n${Green}ssh proxycommand enabled${Color_Off}\n"
		return 0
	fi
}

switch_proxy "${PROXY_FILE}";
switch_proxy "${ENV_FILE}";

switch_ssh_proxycommand;

cat "${PROXY_FILE}";
echo "";
cat "${ENV_FILE}"
