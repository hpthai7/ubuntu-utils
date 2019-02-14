#!/bin/bash

BIN="/usr/bin";
for filename in $(pwd)/* # Using double quotes "" will return a sole complete string
do
	name=$(basename "${filename}");
	bin_name="${name/\.sh/}";
	if [[ "${bin_name}" != "install" ]]; then
		sudo cp "${name}" "${BIN}/${bin_name}";
	fi
done;
