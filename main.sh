# #!/bin/bash
# LOG_FILE="script.log"
# log_action() {
#     echo "$(date +"%Y-%m-%d %H:%M:%S") - $1" | tee -a "$LOG_FILE"
# }
# list_details() {
#     echo "Enter directory or file path"
#     read path
#     if [ -e "$path" ]; then
#         ls -l "$path"  # Changed from `ls -lh` for compatibility
#         log_action "Listed details of $path"
#     else
#         echo " Error: Invalid path!"
#     fi
# }

# backup() {
#     echo "Enter file or directory to backup:"
#     read source
#     echo "Enter backup location:"
#     read destination
#     if [ -e "$source" ]; then
#         mkdir -p "$destination"  # Ensure backup folder exists
#         cp -r "$source" "$destination" && log_action "Backed up $source to $destination"
#         echo " Backup successful."
#     else
#         echo " Error: Invalid source!"
#     fi
# }
# # 3. Count number of files in a directory
# count_files() {
#     read -p "Enter directory: " dir
#     if [ -d "$dir" ]; then
#         count=$(ls -l "$dir" | grep -c "^-")
#         echo "Number of files: $count"
#         log_action "Counted files in $dir"
#     else
#         echo "Invalid directory."
#         log_action "Failed to count files in $dir"
#     fi
# }


# # 4. Display disk usage
# disk_usage() {
#     read -p "Enter directory: " dir
#     if [ -d "$dir" ]; then
#         du -sh "$dir"
#         log_action "Checked disk usage of $dir"
#     else
#         echo "Invalid directory."
#         log_action "Failed to check disk usage of $dir"
#     fi
# }

# # compress file
# compress_files() {
#     read -p "Enter file or directory to compress: " source
#     if [ -e "$source" ]; then
#         read -p "Enter the name for the compressed file (without extension): " zipname
#         tar -czf "$zipname.tar.gz" "$source"
#         log_action "Compressed $source into $zipname.tar.gz"
#         echo "Compressed file created: $zipname.tar.gz"
#     else
#         log_action "Error: $source does not exist."
#         echo "Error: $source does not exist."
#     fi
# }
# source script/list_details
# source script/backup
# source script/count_files
# source script/disk_usage
# source script/search_file
# source script/compress_files
#!/bin/bash

while true; do
    printf "\n Select an option:\n"
    printf "1  List files and directories\n"
    printf "2  Create backup\n"
    printf "3  Count files in a directory\n"
    printf "4  Display disk usage\n"
    printf "5  Search for a file\n"
    printf "6  Compress files or directories\n"
    printf "7  Exit\n"
    echo "Enter your choice:"
    read choice

    case $choice in
        1) ./scripts/list_details.sh ;;  
        2) ./scripts/backup.sh ;;
        3) ./scripts/count_files.sh ;;
        4) ./scripts/disk_usage.sh ;;
        5) ./scripts/search_file.sh ;;
        6) ./scripts/compress_files.sh ;;
        7) echo "Exiting..."; exit 0 ;;
        *) echo "Invalid choice! Please enter a number between 1 and 7." ;;
    esac
done
