#!/bin/bash

PROXY_FILE="/etc/apt/apt.conf.d/95proxies";
ENV_FILE="/etc/environment";

check_proxy() {
	local line=$(head -n 2 "${1}" | tail -n 1); # declaring local does not comply with /bin/sh
	if [[ "${line}" == "#"* ]]; then
		echo "External: ${1}";
	else
		echo "Internal ${1}";
	fi
}

check_proxy "${PROXY_FILE}";
check_proxy "${ENV_FILE}";
