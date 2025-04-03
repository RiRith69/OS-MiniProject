#!/bin/bash
LOG_FILE="script.log"
log_action() {
    echo "$(date +"%Y-%m-%d %H:%M:%S") - $1" | tee -a "$LOG_FILE"
}

echo "Enter file or directory to backup:"
read source
echo "Enter backup location:"
read destination
if [ -e "$source" ]; then
    mkdir -p "$destination"  # Ensure backup folder exists
    cp -r "$source" "$destination" && log_action "Backed up $source to $destination"
    echo " Backup successful."
else
    echo " Error: Invalid source!"
fi
