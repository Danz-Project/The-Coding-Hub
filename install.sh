#!/bin/bash

# ==========================================
# PANEL WINGS INSTALLER - DANZ PRO EDITION
# ==========================================

# --- Colors ---
RED='\033'
GREEN='\033'
YELLOW='\033'
BLUE='\033'
PURPLE='\033'
CYAN='\033'
WHITE='\033'
# --- Bold Colors for "Better" Look ---
B_RED='\033'
B_GREEN='\033'
B_YELLOW='\033'
B_BLUE='\033'
B_PURPLE='\033'
B_CYAN='\033'
B_WHITE='\033'
NC='\033' # No Color

# --- Animation Function ---
# Usage: animate_text "Text to animate" delay_time
animate_text() {
    text="$1"
    delay="${2:-0.01}"
    for (( i=0; i<${#text}; i++ )); do
        echo -n "${text:$i:1}"
        sleep "$delay"
    done
    echo ""
}

# --- Loading Animation ---
loading_bar() {
    clear
    echo -e "${B_RED}Initializing Danz Pro Installer...${NC}"
    echo -ne "${B_RED}[${NC}"
    for i in {1..40}; do
        echo -ne "${B_WHITE}\u2588${NC}"
        sleep 0.03
    done
    echo -e "${B_RED}]${NC}"
    sleep 0.5
    echo -e "${B_WHITE}Loaded Successfully!${NC}"
    sleep 1
}

# --- Utility Functions ---
pause() {
    echo ""
    echo -e "${B_WHITE} Press ${B_RED}[Enter]${B_WHITE} to continue...${NC}"
    read -r
}

# --- Logo / Banner ---
banner() {
    clear
    echo -e "${B_RED}\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501${NC}"
    echo -e "${B_RED}"
    cat << "EOF"
      \u2588\u2588\u2557\u2588\u2588\u2557\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2557\u2588\u2588\u2557  \u2588\u2588\u2557\u2588\u2588\u2588\u2557   \u2588\u2588\u2557\u2588\u2588\u2557   \u2588\u2588\u2557
      \u2588\u2588\u2551\u2588\u2588\u2551\u2588\u2588\u2554\u2550\u2550\u2550\u2550\u255d\u2588\u2588\u2551  \u2588\u2588\u2551\u2588\u2588\u2588\u2588\u2557  \u2588\u2588\u2551\u2588\u2588\u2551   \u2588\u2588\u2557
      \u2588\u2588\u2551\u2588\u2588\u2551\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2557\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2551\u2588\u2588\u2554\u2588\u2588\u2557 \u2588\u2588\u2551\u2588\u2588\u2551   \u2588\u2588\u2557
 \u2588\u2588   \u2588\u2588\u2551\u2588\u2588\u2551\u255a\u2550\u2550\u2550\u2550\u2588\u2588\u2551\u2588\u2588\u2554\u2550\u2550\u2588\u2588\u2551\u2588\u2588\u2551\u255a\u2588\u2588\u2557\u2588\u2588\u2551\u2588\u2588\u2551   \u2588\u2588\u2557
 \u255a\u2588\u2588\u2588\u2588\u2588\u2554\u255d\u2588\u2588\u2551\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2551\u2588\u2588\u2551  \u2588\u2588\u2551\u2588\u2588\u2551 \u255a\u2588\u2588\u2588\u2588\u2551\u255a\u2588\u2588\u2588\u2588\u2588\u2588\u2554\u255d
  \u255a\u2550\u2550\u2550\u2550\u255d \u255a\u2550\u255d\u255a\u2550\u2550\u2550\u2550\u2550\u2550\u255d\u255a\u2550\u255d  \u255a\u2550\u255d\u255a\u2550\u255d  \u255a\u2550\u2550\u2550\u255d \u255a\u2550\u2550\u2550\u2550\u2550\u255d 
EOF
    echo -e "${NC}"
    echo -e "${B_RED}\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501${NC}"
    echo -e "${B_WHITE}                  Made By - Danz Pro${NC}"
    echo -e "${B_RED}\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501${NC}"
    echo ""
}

# ===================== TOOLS MENU (Part C) =====================
tools_menu(){
    while true; do 
        banner
        echo -e "${B_RED}\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500 TOOLS MENU \u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500${NC}"
        echo -e "${B_RED} 1)${B_WHITE} Root Access"
        echo -e "${B_RED} 2)${B_WHITE} Tailscale"
        echo -e "${B_RED} 3)${B_WHITE} Cloudflare DNS"
        echo -e "${B_RED} 4)${B_WHITE} System Info"
        echo -e "${B_RED} 5)${B_WHITE} Vps Run"
        echo -e "${B_RED} 6)${B_WHITE} TERMINAL"
        echo -e "${B_RED} 7)${B_WHITE} RDP Installer"
        echo -e "${B_RED} 8)${B_WHITE} Back to Main Menu"
        echo -e "${B_RED}\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500${NC}"
        
        animate_text "Select an option from the tools menu:" 0.01
        read -p "Select \u2192 " t

        case $t in
            1) bash <(curl -s https://raw.githubusercontent.com/Danz-Project/The-Coding-Hub/refs/heads/main/srv/tools/root.sh) ;;
            2) bash <(curl -s https://raw.githubusercontent.com/Danz-Project/The-Coding-Hub/refs/heads/main/srv/tools/Tailscale.sh) ;;
            3) bash <(curl -s https://raw.githubusercontent.com/Danz-Project/The-Coding-Hub/refs/heads/main/srv/tools/cloudflare.sh) ;;
            4) bash <(curl -s https://raw.githubusercontent.com/Danz-Project/The-Coding-Hub/refs/heads/main/srv/tools/SYSTEM.sh) ;;
            5) bash <(curl -s https://raw.githubusercontent.com/Danz-Project/The-Coding-Hub/refs/heads/main/srv/vm/vps.sh) ;;
            6) bash <(curl -s https://raw.githubusercontent.com/Danz-Project/The-Coding-Hub/refs/heads/main/srv/tools/terminal.sh) ;;
            7) bash <(curl -s https://raw.githubusercontent.com/Danz-Project/The-Coding-Hub/refs/heads/main/srv/tools/rdp.sh) ;;
            8) return ;;
            *) echo -e "${B_RED}Invalid Option${NC}"; sleep 1;;
        esac
        pause
    done
}

# ===================== PANELS MENU (Part A) =====================
panels_menu() {
    while true; do
        banner
        echo -e "${B_RED}\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500 PANELS MENU \u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500${NC}"
        echo -e "${B_RED} 1)${B_WHITE} Pterodactyl Panel"
        echo -e "${B_RED} 2)${B_WHITE} Air-Link Panel"
        echo -e "${B_RED} 3)${B_WHITE} Back to Main Menu"
        echo -e "${B_RED}\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500${NC}"
        
        read -p "Select \u2192 " p
        case $p in
            1) 
                echo -e "${B_GREEN}Starting Pterodactyl Installer...${NC}"
                bash <(curl -s https://raw.githubusercontent.com/Danz-Project/Vps/refs/heads/main/pterodactyl.sh)
                ;;
            2) 
                echo -e "${B_GREEN}Starting Air-Link Installer...${NC}"
                bash <(curl -s https://raw.githubusercontent.com/Danz-Project/app-build-journey/refs/heads/main/air-link)
                ;;
            3) return ;;
            *) echo -e "${B_RED}Invalid Option${NC}"; sleep 1 ;;
        esac
        pause
    done
}

# ===================== MAIN MENU =====================
# Run Loading Bar Once
loading_bar

while true; do
    banner
    # Animated Main Menu Options
    echo -e "${B_RED}\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500 MAIN MENU \u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500${NC}"
    echo -e "${B_RED} A)${B_WHITE} Panel"
    echo -e "${B_RED} B)${B_WHITE} Vps Maker"
    echo -e "${B_RED} C)${B_WHITE} Tools"
    echo -e "${B_RED} D)${B_WHITE} System Edit (Coming Soon)"
    echo -e "${B_RED} E)${B_WHITE} Exit"
    echo -e "${B_RED}\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500${NC}"
    
    # animate_text "Select an option:" 0.02
    read -p "Select \u2192 " choice

    # Convert to lowercase to handle A/a
    case ${choice,,} in
        a)
            panels_menu
            ;;
        b)
            echo -e "${B_GREEN}Launching VPS Maker...${NC}"
            bash <(curl -s https://raw.githubusercontent.com/Danz-Project/app-build-journey/refs/heads/main/vpmaker)
            pause
            ;;
        c)
            tools_menu
            ;;
        d)
            echo -e "${B_YELLOW}"
            animate_text ">>> System Edit feature is Coming Soon! <<<" 0.05
            echo -e "${NC}"
            sleep 1
            ;;
        e)
            echo -e "${B_GREEN}Thank you for using Danz Pro Installer!${NC}"
            animate_text "Exiting..." 0.05
            exit 0
            ;;
        *)
            echo -e "${B_RED}Invalid selection. Please try again.${NC}"
            sleep 1
            ;;
    esac
done
