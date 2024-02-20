#!/bin/bash
# Please dont init this file directly, use cmd

if [[ $# -ne 2 ]]; then
    echo "Usage: $0 install <version>"
    exit 1
fi

action=$1
version=$2

if [[ $action != "install" ]]; then
    echo "Invalid action. Supported actions: install"
    exit 1
fi

case $version in
    "1.0")
        echo "Installing Tech World version 1.0"
        curl -O https://pastebin.com/raw/WhwrYkBX
        ;;
    "2.0")
        echo "Installing Tech World version 2.0"
        curl -O https://pastebin.com/raw/ad35kbXn
        ;;
    *)
        echo "Unsupported version. Supported versions: 1.0, 2.0"
        exit 1
        ;;
esac
