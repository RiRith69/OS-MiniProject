#!/bin/bash
LOG_FILE="script.log"
log_action() {
    echo "$(date +"%Y-%m-%d %H:%M:%S") - $1" | tee -a "$LOG_FILE"
}

read -p "Enter file or directory to compress: " source
if [ -e "$source" ]; then
    read -p "Enter the name for the compressed file (without extension): " zipname
    tar -czf "$zipname.tar.gz" "$source"
    log_action "Compressed $source into $zipname.tar.gz"
    echo "Compressed file created: $zipname.tar.gz"
else
    log_action "Error: $source does not exist."
    echo "Error: $source does not exist."
fi
