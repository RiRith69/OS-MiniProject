
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
