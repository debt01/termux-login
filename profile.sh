#!/bin/bash
# Developer Profile Generator
# For TermuX-Custom Tool
# Don't try to copy my script or tool or source code anyone
# Colors
RED='\033[1;31m'
GREEN='\033[1;32m'
YELLOW='\033[1;33m'
BLUE='\033[1;34m'
PURPLE='\033[1;35m'
CYAN='\033[1;36m'
NC='\033[0m'

animate() {
  echo -e "\033[1;32m"  # Bright green color
  echo " ██╗    ██╗██╗  ██╗ █████╗  ██████╗██╗  ██╗███████╗██████╗ "
  echo " ██║    ██║██║  ██║██╔══██╗██╔════╝██║ ██╔╝██╔════╝██╔══██╗"
  echo " ██║ █╗ ██║███████║███████║██║     █████╔╝ █████╗  ██████╔╝"
  echo " ██║███╗██║██╔══██║██╔══██║██║     ██╔═██╗ ██╔══╝  ██╔══██╗"
  echo " ╚███╔███╔╝██║  ██║██║  ██║╚██████╗██║  ██╗███████╗██║  ██║"
  echo "  ╚══╝╚══╝ ╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝"
  echo -e "\033[0;36m"  # Cyan color
  echo " ═══════════════════════════════════════════════════"
  echo "   W H I T E   H A T   H A C K E R   P R O F I L E "
  echo " ═══════════════════════════════════════════════════"
  echo -e "\033[0m"  # Reset color
}

# Main Profile
show_profile() {
  clear
  animate
  
  echo -e "${YELLOW}╔════════════════════════════════════════╗"
  echo -e "║          ${CYAN}TERMUX-CUSTOM DEVELOPER${YELLOW}         ║"
  echo -e "╚════════════════════════════════════════╝${NC}"
  
  echo -e "\n${BLUE}» Name:${PURPLE} Linux Hunter420"
  echo -e "${BLUE}» Role:${CYAN} Security Researcher & Terminal Customizer"
  echo -e "${BLUE}» Tool:${GREEN} TermuX-Banner (v2.1)"
  
  echo -e "\n${RED}━━━━━━━━━━━━━ TECHNICAL SKILLS ━━━━━━━━━━━━${NC}"
  echo -e "${YELLOW}• Core:${NC} Bash, Python, Termux API"
  echo -e "${YELLOW}• Security:${NC} Authentication Systems, Encryption"

  
  echo -e "\n${RED}━━━━━━━━━━━━━━━ CONTACT ━━━━━━━━━━━━━━━${NC}"
  echo -e "${BLUE}• GitHub:${NC} https://github.com/debt01"
  echo -e "${BLUE}• Email:${NC} stifen38@gmail.com"

  
  echo -e "\n${GREEN}━━━━━━━━━━━━ DEVELOPMENT PHILOSOPHY ━━━━━━━━━━${NC}"
  echo -e "\"Tools should empower users while maintaining security\""
  
  echo -e "\n${RED}Press any key to return...${NC}"
  read -n 1 -s
}

# Interactive Menu
while true; do
  clear
  echo -e "${CYAN}"
  echo "╔════════════════════════════╗"
  echo "║    DEVELOPER PROFILE       ║"
  echo "╠════════════════════════════╣"
  echo "║ 1. View Full Profile       ║"
  echo "║ 2. View Technical Specs    ║"
  echo "║ 3. View Contact Info       ║"
  echo "║ 4. Exit                    ║"
  echo "╚════════════════════════════╝"
  echo -e "${NC}"
  
  read -p "Select option [1-4]: " choice
  
  case $choice in
    1) show_profile ;;
    2) 
       echo -e "\n${YELLOW}» Core Technologies:${NC}"
       echo "- Bash Scripting"
       echo "- Python Integration"
       echo "- Termux API"
       read -p "Press Enter..."
       ;;
    3) 
       echo -e "\n${BLUE}» Contact:${NC}"
       echo "GitHub: debt01"
       echo "Email: stifen38@gmail.com"
       read -p "Press Enter..."
       ;;
    4) break ;;
    *) echo -e "${RED}Invalid option!${NC}"; sleep 1 ;;
  esac
done

echo -e "\n${GREEN}Profile session ended.${NC}"
