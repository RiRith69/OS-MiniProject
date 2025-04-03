#!/bin/bash
LOG_FILE="script.log"
log_action() {
    echo "$(date +"%Y-%m-%d %H:%M:%S") - $1" | tee -a "$LOG_FILE"
}
echo "Enter directory or file path"
read path
if [ -e "$path" ]; then
    ls -l "$path"  # Changed from `ls -lh` for compatibility
    log_action "Listed details of $path"
else
    echo " Error: Invalid path!"
fi
