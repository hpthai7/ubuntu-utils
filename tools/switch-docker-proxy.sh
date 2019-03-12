#!/bin/bash

PROXY_FILE="/etc/systemd/system/docker.service.d/http-proxy.conf";
PROXY_FILE_BAK="/etc/systemd/system/docker.service.d/http-proxy.conf.bak";

switch_proxy() {
   if [[ -a "${PROXY_FILE}" ]]; then
       sudo mv "${PROXY_FILE}" "${PROXY_FILE_BAK}";
       echo "Proxy disabled";
   fi
   if [[ -a "${PROXY_FILE_BAK}" ]]; then
       sudo mv "${PROXY_FILE_BAK}" "${PROXY_FILE}";
       echo "Proxy enabled";
   fi
}

switch_proxy;
sudo systemctl daemon-reload;
sudo systemctl restart docker;
