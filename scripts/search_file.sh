#!/bin/bash
LOG_FILE="script.log"

log_action() {
    echo "$(date +"%Y-%m-%d %H:%M:%S") - $1" | tee -a "$LOG_FILE"
}

# Prompt user for directory path
read -p "Enter directory path to search for a file: " dir_path
dir_path=$(eval echo "$dir_path")  # Expands variables like ~ (home directory)

# Prompt user for file name or extension
read -p "Enter the file name or extension to search for (e.g., example.txt or *.txt): " file_ext

# Check if directory exists
if [ -d "$dir_path" ]; then
    # Search for the file(s)
    search_result=$(find "$dir_path" -type f -name "$file_ext" 2>/dev/null)
    
    if [ -n "$search_result" ]; then
        echo "Found the following files:"
        echo "$search_result"
        log_action "Successfully searched for '$file_ext' in '$dir_path'"
    else
        echo "No matching files found."
        log_action "No matching files found for '$file_ext' in '$dir_path'"
    fi
else
    echo "Invalid directory path!"
    log_action "Failed to search for '$file_ext' in '$dir_path'"
fi
