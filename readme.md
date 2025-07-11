
# TermuX-Banner ✨
**A customized Termux experience with visual flair and optional feedback**

![TermuX-Custom Demo](demo.gif) *(Example GIF placeholder)*

## Features
- 🔒 **Secure login system** with username/password
- 🎨 **Custom shell prompt** with colors and formatting
- 🛠️ **Easy installation/uninstallation**
- 📱 **Optimized for Termux** on Android

## Installation

### Prerequisites
- Termux (from [F-Droid](https://f-droid.org/en/packages/com.termux/))
- Internet connection

### Quick Setup
# 1. Install dependencies
```
pkg update && pkg upgrade -y
pkg install git mpv -y
```
# 2. Clone repository
```
git clone https://github.com/debt01/termux-login.git
cd termux-login
```
# 3. Run installer
```
chmod +x setup.sh
./setup.sh

```
After installation:

Restart Termux

Enter your credentials when prompted

Enjoy your customized shell!

Uninstallation
```
cd ~/termux-login
```
```
./delete.sh
```
Security Notes
Credentials are stored in /usr/etc/bash.bashrc

For maximum security, change password periodically using:
```
./setup.sh
```
Troubleshooting
Issue	Solution
"Command not found"	Run
```
pkg update && pkg upgrade
```
Login loop	Delete
```
~/.termux/config.cfg
```
## License
[License](https://github.com/debt01/termux-login/blob/main/LICENSE.md) - Free for personal and educational use.
(Developed by debt01)[White Hat Hacker BD]
