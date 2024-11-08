#!/bin/bash -x

#cd to the directory where the script is located
cd "$(dirname "$0")"

# Create a ZIP File one level up with the name of the directory
foldername=$(basename $(pwd))
cd ..
zip -r ${foldername}.zip ${foldername}/ -x "*.git*" -x "*.sh"
