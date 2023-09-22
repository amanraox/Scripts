#!/bin/bash
# Function to display the help message
function show_help {
    echo "Usage: c [-h] [-d] <filename>
    -h, --help    Display this help message
    -d, --delete  Delete the file if it already exists  
    <filename>    Name of the file to open with a text editor" | lolcat
    echo "  This Script is created by --- Aman Umrao" | lolcat
}

# Variables
delete_file=false

# Parse command-line options
while [[ $# -gt 0 ]]; do
    case "$1" in
        -h|--help)
            show_help
            exit 0
            ;;
        -d|--delete)
            delete_file=true
            shift
            ;;
        *)
            break
            ;;
    esac
done

cd /home/amanraox/Documents/C/
# Check if an argument (file name) is provided
# Check if the script is called with no arguments
if [ $# -eq 0 ]; then
    echo "Error: Please provide a filename"
    show_help
    exit 1
fi

# Get the file name from the command-line argument
filename="$1"

# Check if the file exists
if [ -e "$filename.c" ]; then
    if [ "$delete_file" = true ]; then
        rm -i "$filename.c"
        if [ $? -ne 0 ]; then
            echo "Error: Unable to delete '$filename'."
            exit 1
        else
            echo "File '$filename' deleted."
            exit 0
        fi
    else
        echo "File $filename.c already exists. Opening existing file" | lolcat
  open $filename.c
        exit
    fi
else

# Add the text "Aman" to the file
  echo "#include <stdio.h>
int main() {
    int n
	
	return 0;
}" > "$filename.c"

  echo "File $filename.c created by Aman" | lolcat
  echo "Opened $filename.c to edit" | lolcat
open $filename.c
fi
# script created by Aman Umrao for easily creating c file with snippet.
