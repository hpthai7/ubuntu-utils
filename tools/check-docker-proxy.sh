#!/bin/bash

PROXY_FILE="/etc/systemd/system/docker.service.d/http-proxy.conf";
PROXY_FILE_BAK="/etc/systemd/system/docker.service.d/http-proxy.conf.bak";

check_proxy() {
   if [[ -a "${PROXY_FILE}" ]]; then
       echo "Proxy enabled";
   fi
   if [[ -a "${PROXY_FILE_BAK}" ]]; then
       echo "Proxy disabled";
   fi
}

check_proxy;
