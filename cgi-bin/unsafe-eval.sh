#!/usr/bin/env bash
set -x

echo "Content-Type: text/html"
echo ""

user_input=$1

if ! [[ "$user_input" =~ ^[a-zA-Z0-9]+$ ]]; then
    echo "Error: Invalid input"
    exit 1
fi

escaped_input=$(printf '%q' "$user_input")

system_call="ls $escaped_input"

echo "<h1>Directory Listing</h1>"
echo "$(eval $system_call)"
