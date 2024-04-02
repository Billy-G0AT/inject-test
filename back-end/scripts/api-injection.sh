#!/bin/bash

# Capture New URL as Argument
new_url="$1"

# Path to JavaScript File
file="../../front-end/javascript/visitor-counter.js"

# Replace Old URL in JavaScript File
sed -i "s#var apiUrl = \".*\"#var apiUrl = \"$new_url\"#" "$file"

echo "Injection Script Has Been Run Successfully"