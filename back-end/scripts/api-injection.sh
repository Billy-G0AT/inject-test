#!/bin/bash

# cd ../infra
# Assign the new URL
# new_url=$(terraform output -raw api_url)
new_url="$1"

# Path to your JavaScript file
file="../../front-end/javascript/visitor-counter.js"

# Replace the value of apiUrl in the JavaScript file
sed -i "s#var apiUrl = \".*\"#var apiUrl = \"$new_url\"#" "$file"

# echo "apiUrl in $javascript_file has been updated to: $new_url"
echo "New URL is...$new_url"