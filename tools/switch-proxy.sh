#!/bin/bash

PROXY_FILE="/etc/apt/apt.conf.d/95proxies";
ENV_FILE="/etc/environment";

switch_proxy() {
	line=$(head -n 2 "${1}" | tail -n 1);
	if [[ "${line}" == "#"* ]]; then
		sudo sed -u -i s/#// "${1}";
	else
		sudo sed -u -i s/^/#/ "${1}";
	fi
}

switch_proxy "${PROXY_FILE}";
switch_proxy "${ENV_FILE}";

cat "${PROXY_FILE}";
echo "";
cat "${ENV_FILE}"
