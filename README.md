# OpenArchTitus

This is a version of [ArchTitus](https://github.com/christitustech/archtitus) that I will actively maintain.
It will be similar to the original, but with some changes.

---
## Create bootable drive/use ISO image

Download Arch Linux ISO Image from <https://archlinux.org/download/> and put on a USB drive with [Etcher](https://www.balena.io/etcher/), [Ventoy](https://www.ventoy.net/en/index.html), or [Rufus](https://rufus.ie/en/). 

If you are using OpenArchTitus with a Virtual Machine, you don't have to do any of these steps. You will just have to mount the ISO to the VM as a CD/DVD Drive.

## Boot Arch Linux

From initial Prompt type the following commands:

```
pacman -Sy
pacman -S git
git clone https://github.com/techguy16/openarchtitus
cd openarchtitus
./archtitus.sh
```

If those commands don't work, try these:
```
pacman -Syu
pacman -S git
git clone https://github.com/techguy16/openarchtitus
cd openarchtitus
./archtitus.sh
```


## Troubleshooting

__[Arch Linux RickEllis Installation Guide](https://github.com/rickellis/Arch-Linux-Install-Guide)__

__[Arch Linux Wiki Installation Guide](https://wiki.archlinux.org/title/Installation_guide)__

The main script will generate .log files for every script that is run as part of the installation process. These log files contain the terminal output so you can review any warnings or errors that occurred during installation and aid in troubleshooting. 

### Wi-Fi not working?

You can check if the WiFi is blocked by running `rfkill list`.
If it says **Soft blocked: yes**, then run `rfkill unblock wifi`

After unblocking the WiFi, you can connect to it. Go through these 5 steps:

#1: Run `iwctl`

#2: Run `device list`, and find your device name.

#3: Run `station [device name] scan`

#4: Run `station [device name] get-networks`

#5: Find your network, and run `station [device name] connect [network name]`, enter your password and run `exit`. You can test if you have internet connection by running `ping google.com`, and then Press Ctrl and C to stop the ping test.

## Reporting Issues

An issue is easier to resolve if it contains a few important pieces of information.
1. Chosen configuration from /configs/setup.conf (DONT INCLUDE PASSWORDS)
1. Errors seen in .log files
1. What commit/branch you used
1. Where you were installing (VMWare, Virtualbox, Virt-Manager, Baremetal, etc)
    1. If a VM, what was the configuration used.
## Credits
- Thanks to [Chris Titus](https://github.com/christitustech) for the original script.
