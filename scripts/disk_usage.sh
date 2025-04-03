#!/bin/bash
LOG_FILE="script.log"
log_action() {
    echo "$(date +"%Y-%m-%d %H:%M:%S") - $1" | tee -a "$LOG_FILE"
}

read -p "Enter directory: " dir
if [ -d "$dir" ]; then
    du -sh "$dir"
    log_action "Checked disk usage of $dir"
else
    echo "Invalid directory."
    log_action "Failed to check disk usage of $dir"
fi
