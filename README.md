# usb triger

Auto-open terminal + `btop` when the SanDisk USB (`0781:5567`) is inserted.

## Files
- `etc/udev/rules.d/99-usb-btop.rules`
- `usr/local/bin/usb-btop-trigger.sh`
- `home/unlike/.local/bin/usb-btop-launch`
- `home/unlike/.config/systemd/user/usb-btop.service`

## Install
```sh
sudo install -Dm755 usr/local/bin/usb-btop-trigger.sh /usr/local/bin/usb-btop-trigger.sh
install -Dm755 home/unlike/.local/bin/usb-btop-launch "$HOME/.local/bin/usb-btop-launch"
install -Dm644 home/unlike/.config/systemd/user/usb-btop.service "$HOME/.config/systemd/user/usb-btop.service"
sudo install -Dm644 etc/udev/rules.d/99-usb-btop.rules /etc/udev/rules.d/99-usb-btop.rules
sudo udevadm control --reload-rules
systemctl --user daemon-reload
```

## Notes
- GNOME: uses `kgx` first, then `gnome-terminal`.
- KDE: uses `konsole`.
- Fallback: `x-terminal-emulator`.

## Attribution
Source adapted from work done in this session; modify freely as requested, but keep this attribution in published copies.
