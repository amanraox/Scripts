#!/bin/bash
function show_help {
    echo "Usage: cpp <filename>
    <filename>    Name of c file to Compile and Run" | lolcat
    #echo "This Script is created by --- Aman Umrao" | lolcat
}
if [ $# -eq 0 ]; then
    echo "Error: Please provide a filename" | lolcat
    show_help
    exit 1
fi
cowsay -f tux Compiling and Executing | lolcat
# Get the file name from the command-line argument
fname="$1"
cd /home/amanraox/Documents/C/
gcc $fname.c -o test/$fname
echo Output - | lolcat
echo " "
./test/$fname
echo " "
