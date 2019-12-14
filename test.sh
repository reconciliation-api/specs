#!/bin/bash

set -e

# Test JSON examples against schemas

for schema_file in `ls schemas`; do
        echo "Testing $schema_file"
        schema_name=$(echo "$schema_file" | cut -f 1 -d '.')
        ajv test -s schemas/$schema_file -d "examples/$schema_name/valid/*.json" --valid
        ajv test -s schemas/$schema_file -d "examples/$schema_name/invalid/*.json" --invalid
        echo ""
done

if [ $? -eq 0 ]
then
  echo -e "All tests \033[0;32mPASSED\033[0m\n"
fi