#!/data/data/com.termux/files/usr/bin/bash

clear


#color
y="\e[1;33m"
r="\e[1;31m"
b="\e[1;34m"
pink='\033[1;35m'
GREEN='\033[1;32m'

# Banner
echo -e "${r}"
echo "  ██████╗██╗   ██╗██████╗ ███████╗██████╗ "
echo " ██╔════╝╚██╗ ██╔╝██╔══██╗██╔════╝██╔══██╗"
echo " ██║      ╚████╔╝ ██████╔╝█████╗  ██████╔╝"
echo " ██║       ╚██╔╝  ██╔══██╗██╔══╝  ██╔══██╗"
echo " ╚██████╗   ██║   ██████╔╝███████╗██║  ██║"
echo "  ╚═════╝   ╚═╝   ╚═════╝ ╚══════╝╚═╝  ╚═╝"

echo -e "${r}"
echo " ███████╗ ██████╗ █████╗ ███╗   ██╗███╗   ██╗███████╗██████╗ ███████╗"
echo " ██╔════╝██╔════╝██╔══██╗████╗  ██║████╗  ██║██╔════╝██╔══██╗██╔════╝"
echo " ███████╗██║     ███████║██╔██╗ ██║██╔██╗ ██║█████╗  ██████╔╝███████╗"
echo " ╚════██║██║     ██╔══██║██║╚██╗██║██║╚██╗██║██╔══╝  ██╔══██╗╚════██║"
echo " ███████║╚██████╗██║  ██║██║ ╚████║██║ ╚████║███████╗██║  ██║███████║"
echo " ╚══════╝ ╚═════╝╚═╝  ╚═╝╚═╝  ╚═══╝╚═╝  ╚═══╝╚══════╝╚═╝  ╚═╝╚══════╝"

echo -e "${pink}"
echo " ██████╗ ██╗   ██╗██╗     ██╗  ██╗"
echo " ██╔══██╗██║   ██║██║     ██║ ██╔╝"
echo " ██████╔╝██║   ██║██║     █████╔╝ "
echo " ██╔══██╗██║   ██║██║     ██╔═██╗ "
echo " ██████╔╝╚██████╔╝███████╗██║  ██╗"
echo " ╚═════╝  ╚═════╝ ╚══════╝╚═╝  ╚═╝"

echo " ██████╗  ██████╗ ███╗   ███╗ █████╗ ██╗███╗   ██╗"
echo " ██╔══██╗██╔═══██╗████╗ ████║██╔══██╗██║████╗  ██║"
echo " ██║  ██║██║   ██║██╔████╔██║███████║██║██╔██╗ ██║"
echo " ██║  ██║██║   ██║██║╚██╔╝██║██╔══██║██║██║╚██╗██║"
echo " ██████╔╝╚██████╔╝██║ ╚═╝ ██║██║  ██║██║██║ ╚████║"
echo " ╚═════╝  ╚═════╝ ╚═╝     ╚═╝╚═╝  ╚═╝╚═╝╚═╝  ╚═══╝"

echo -e "${GREEN}                                > DEVALOPER CYBER BLACK LION! <<${NC}"

termux-open-url https://chat.whatsapp.com/HlH3EfeFlar5Fy1YCieMKJ

# Check if 'nslookup' is installed
if ! command -v nslookup &> /dev/null; then
    echo "'nslookup' not found. Installing dnsutils..."
    pkg install -y dnsutils
fi

echo "Enter file name with domain list (one per line):"
read file

if [ ! -f "$file" ]; then
    echo "File not found!"
    exit 1
fi

echo "Resolving domains to IPs..."
while IFS= read -r domain; do
    ip=$(nslookup "$domain" 2>/dev/null | grep 'Address' | tail -n1 | awk '{print $2}')
    if [ -n "$ip" ]; then
        echo "$domain -> $ip"
    else
        echo "$domain -> IP not found"
    fi
done < "$file"
