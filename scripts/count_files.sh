#!/bin/bash
LOG_FILE="script.log"
log_action() {
    echo "$(date +"%Y-%m-%d %H:%M:%S") - $1" | tee -a "$LOG_FILE"
}

read -p "Enter directory: " dir
    if [ -d "$dir" ]; then
    count=$(ls -l "$dir" | grep -c "^-")
    echo "Number of files: $count"
    log_action "Counted files in $dir"
else
    echo "Invalid directory."
    log_action "Failed to count files in $dir"
fi
