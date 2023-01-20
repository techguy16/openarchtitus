echo -ne "
-------------------------------------------------------------------------
           █▀█ █▀█ █▀▀ █▄░█ ▄▀█ █▀█ █▀▀ █░█ ▀█▀ █ ▀█▀ █░█ █▀
           █▄█ █▀▀ ██▄ █░▀█ █▀█ █▀▄ █▄▄ █▀█ ░█░ █ ░█░ █▄█ ▄█
-------------------------------------------------------------------------
                    Automated Arch Linux Installer
-------------------------------------------------------------------------
   Scripts are in directory named scripts (in OpenArchTitus directory)
"

# Make vars with the directories used in OpenArchTitus
set -a
SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
SCRIPTS_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"/scripts
CONFIGS_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"/configs
set +a

sh ./scripts/startup.sh
sh ./scripts/0-preinstall.sh
sh ./scripts/1-setup.sh
sh ./scripts/2-user.sh
sh ./3-post-setup.sh

echo -ne "
-------------------------------------------------------------------------
           █▀█ █▀█ █▀▀ █▄░█ ▄▀█ █▀█ █▀▀ █░█ ▀█▀ █ ▀█▀ █░█ █▀
           █▄█ █▀▀ ██▄ █░▀█ █▀█ █▀▄ █▄▄ █▀█ ░█░ █ ░█░ █▄█ ▄█
-------------------------------------------------------------------------
                    Automated Arch Linux Installer
-------------------------------------------------------------------------
                Done - Please Eject Install Media and Reboot
"
