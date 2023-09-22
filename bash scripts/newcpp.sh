#!/bin/bash

# Function to display the help message
function show_help {
    echo "Usage: cpp [-h] [-d] <filename>
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

# Check if an argument (file name) is provided
cd /home/amanraox/Documents/cpp/
# Check if the script is called with no arguments
if [ $# -eq 0 ]; then
    echo "Error: Please provide a filename" | lolcat
    show_help
    exit 1
fi

# Get the file name from the command-line argument
filename="$1"

# Check if the file exists
if [ -e "$filename.cpp" ]; then
    if [ "$delete_file" = true ]; then
        rm -i "$filename.cpp"
        if [ $? -ne 0 ]; then
            echo "Error: Unable to delete '$filename'."
            exit 1
        else
            echo "File '$filename' deleted."
            exit 0
        fi
    else
        echo "File $filename.cpp already exists. Opening existing file" | lolcat
  open $filename.cpp
        exit
    fi
else
# Add the text "Aman" to the file
  echo "#include <iostream>
using namespace std;
int main() {
    int n
	
	return 0;
}" > "$filename.cpp"
open $filename.cpp

  echo "File $filename.cpp created" | lolcat
  echo "Opened $filename.cpp to edit" | lolcat
fi
# script created by Aman Umrao
