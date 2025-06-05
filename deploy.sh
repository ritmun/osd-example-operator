#!/bin/bash

# Define the directory containing your YAML files
SSS_YAML="sss.yaml"
 

echo "Applying $SSS_YAML..."
./kubectl apply -f "$SSS_YAML"
if [ $? -ne 0 ]; then
  echo "Error applying $SSS_YAML. Exiting."
  exit 1
fi

echo "SSS applied successfully."
