#! /bin/bash

# Exec the startup script if it exist
if [ -f /custom.sh ]; then
    bash /custom.sh
fi

zsh