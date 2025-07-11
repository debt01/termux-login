#!/usr/bin/env bash

# TermuX-Custom Installation Script
# Clean version without sound effects

# Configuration
CONFIG_DIR="$HOME/.termux"
BACKUP_DIR="$CONFIG_DIR/backup"
REPO_DIR="$HOME/TermuX-Custom"
NETWORK_DIR="$REPO_DIR/NETWORK"
TARGET_DIR="/data/data/com.termux/files/usr/etc"

# Colors
RED='\033[1;31m'
GREEN='\033[1;32m'
YELLOW='\033[1;33m'
BLUE='\033[1;34m'
NC='\033[0m'

print_header() {
    clear
    echo -e "${GREEN}"
    figlet -f slant "Hacker"
    echo -e "${NC}"
    echo -e "${BLUE}Custom Terminal Experience for Termux${NC}"
    echo -e "${YELLOW}========================================${NC}"
}

check_termux() {
    if ! [ -x "$(command -v termux-info)" ]; then
        echo -e "${RED}Error: This script must be run in Termux${NC}"
        exit 1
    fi
}

install_packages() {
    echo -e "${YELLOW}[*] Updating packages...${NC}"
    pkg update -y && pkg upgrade -y
    
    echo -e "${YELLOW}[*] Installing requirements...${NC}"
    pkg install -y python cmatrix figlet ruby python2 termux-api
    
    echo -e "${GREEN}[✓] Packages installed successfully${NC}"
}

setup_environment() {
    echo -e "${YELLOW}[*] Setting up storage...${NC}"
    termux-setup-storage
    
    echo -e "${YELLOW}[*] Creating directories...${NC}"
    mkdir -p "$NETWORK_DIR"
    
    echo -e "${YELLOW}[*] Setting permissions...${NC}"
    chmod +x login.sh delete.sh banner.sh update.sh profile.sh
}

backup_config() {
    echo -e "${YELLOW}[*] Backing up current config...${NC}"
    mkdir -p "$BACKUP_DIR"
    
    [ -f "$TARGET_DIR/bash.bashrc" ] && cp "$TARGET_DIR/bash.bashrc" "$BACKUP_DIR"
    [ -f "$TARGET_DIR/motd" ] && cp "$TARGET_DIR/motd" "$BACKUP_DIR"
    
    echo -e "${GREEN}[✓] Backup created in $BACKUP_DIR${NC}"
}

install_login() {
    echo -e "${YELLOW}[*] Installing login system...${NC}"
    cp login.sh "$TARGET_DIR/"
    echo -e "${GREEN}[✓] Login system installed${NC}"
}

# Main execution
print_header
check_termux
install_packages
setup_environment
backup_config
install_login

echo -e "${GREEN}\n[✓] Installation complete!${NC}"
echo -e "${BLUE}Restart Termux to see changes${NC}"
