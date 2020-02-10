#!/bin/bash

set -e

# Test JSON examples against schemas
for version in "0.1" "latest"; do
	echo "Testing version: $version"

	for schema_file in `ls $version/schemas`; do
		echo "Testing $schema_file"
		schema_name=$(echo "$schema_file" | cut -f 1 -d '.')
		ajv test -s $version/schemas/$schema_file -d "$version/examples/$schema_name/valid/*.json" --valid
		ajv test -s $version/schemas/$schema_file -d "$version/examples/$schema_name/invalid/*.json" --invalid
		echo ""
	done
done

if [ $? -eq 0 ]
then
  echo -e "All tests \033[0;32mPASSED\033[0m\n"
fi
