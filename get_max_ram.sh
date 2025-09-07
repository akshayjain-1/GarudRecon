SUBFINDER(){
	subfinder -duc -silent -d dell.com -all -config ~/.config/subfinder/config.yaml -pc ~/.config/subfinder/provider-config.yaml | unew -el -i -t -q subfinder.subs
}

AMASS(){
	amass enum -nocolor -nolocaldb -passive -norecursive -noalts -d dell.com -config ~/.config/amass/config.ini 2>/dev/null | unew -el -i -t -q amass.subs
	amass enum -nocolor -nolocaldb -passive -norecursive -noalts -d tesla.com -config ~/.config/amass/config.ini 2>/dev/null | unew -el -i -t -q amass.subs
}

# -----------------------------
# Export functions for subshell timing
# -----------------------------
export -f SUBFINDER
export -f AMASS

# -----------------------------
# Function to get max RAM in MB
# -----------------------------
get_max_ram() {
    local func_name=$1
    # Run /usr/bin/time -v on the function and capture output
    max_rss_kb=$(/usr/bin/time -v bash -c "$func_name" 2>&1 | awk -F': ' '/Maximum resident set size/{print $2}')
    # Convert KB to MB
    max_rss_mb=$((max_rss_kb / 1024))
    echo "$func_name: MAX_RAM_USED: ${max_rss_mb} MB"
}

# -----------------------------
# Run and display max RAM used
# -----------------------------
get_max_ram SUBFINDER
get_max_ram AMASS


# bash get_max_ram.sh

# output
# SUBFINDER: MAX_RAM_USED: 54 MB
# AMASS: MAX_RAM_USED: 528 MB