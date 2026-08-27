#!/bin/sh
set -eu

# Detect active user
USER_NAME=${SUDO_USER:-${LOGNAME:-${USER:-""}}}
if [ -z "$USER_NAME" ]; then
  exit 0
fi

# Pass device node from udev (DEVNAME)
DEVNODE=${DEVNAME:-""}

runuser -u "$USER_NAME" -- systemctl --user start usb-btop@"${DEVNODE}".service
