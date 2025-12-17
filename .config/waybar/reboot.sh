#!/bin/bash

# Prompt the user for confirmation
read -p "Are you sure you want to do this? (Y/N): " -n 1 -r
echo    # Move to a new line

if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    # Exit if the answer is not 'Y' or 'y'
    exit 1
fi

# The script continues with the action only if 'Y' or 'y' was pressed
systemctl reboot -i

