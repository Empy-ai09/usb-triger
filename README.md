# USB Trigger

> [!NOTE]
> Repositori ini masih dalam tahap pengembangan dan akan terus berkembang.

Otomatis membuka terminal + `btop` saat USB SanDisk (`0781:5567`) dimasukkan.

## Berkas
- `etc/udev/rules.d/99-usb-btop.rules`
- `usr/local/bin/usb-btop-trigger.sh`
- `home/user/.local/bin/usb-btop-launch`
- `home/user/.config/systemd/user/usb-btop.service`

## Cara Instalasi
*Catatan: Ganti `user` dengan username Anda masing-masing.*

```sh
sudo install -Dm755 usr/local/bin/usb-btop-trigger.sh /usr/local/bin/usb-btop-trigger.sh
```

```sh
install -Dm755 home/user/.local/bin/usb-btop-launch "$HOME/.local/bin/usb-btop-launch"
```

```sh
install -Dm644 home/user/.config/systemd/user/usb-btop.service "$HOME/.config/systemd/user/usb-btop.service"
```

```sh
sudo install -Dm644 etc/udev/rules.d/99-usb-btop.rules /etc/udev/rules.d/99-usb-btop.rules
```

```sh
sudo udevadm control --reload-rules
```

```sh
systemctl --user daemon-reload
```

## Catatan
- GNOME: menggunakan `kgx`, lalu `gnome-terminal`.
- KDE: menggunakan `konsole`.
- Cadangan: `x-terminal-emulator`.

## Atribusi
Sumber diadaptasi dari sesi ini; ubah bebas sesuai kebutuhan, pertahankan atribusi ini pada salinan yang dipublikasikan.
