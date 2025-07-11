#!/bin/bash
# Copyright (C) 2024 [Linux HUnter420] - All Rights Reserved
# Unauthorized copying/modification prohibited
# License: See LICENSE.md file
# Copyright (C) 2025 [debt01] - All Rights Reserved
# Unauthorized copying/modification prohibited
# TermuX-Custom Uninstaller
echo -e "\033[1;31m[*] Removing TermuX-Custom...\033[0m"

cd /data/data/com.termux/files/usr/etc
[ -f bash.bashrc ] && mv bash.bashrc bash.bashrc.bak
[ -f motd ] && mv motd motd.bak

echo -e "\033[1;32m[✓] Removed custom configurations\033[0m"
echo -e "\033[1;33m[!] Manual cleanup may be needed in ~/.termux\033[0m"
