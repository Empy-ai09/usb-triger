#!/bin/sh
set -eu
runuser -u "$SUDO_USER" -- systemctl --user start usb-btop.service
