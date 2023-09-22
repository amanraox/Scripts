#!/bin/bash
function show_help {
    echo "Usage: cpp <filename>
    <filename>    Name of cpp file to Run" | lolcat
    #echo "This Script is created by --- Aman Umrao" | lolcat
}
if [ $# -eq 0 ]; then
    echo "Error: Please provide a filename" | lolcat
    show_help
    exit 1
fi
cowsay -f tux C++ Program Running| lolcat
# Get the file name from the command-line argument
fname="$1"
cd /home/amanraox/Documents/cpp/
echo Output - | lolcat
echo " "
./test/$fname
echo " "
# script created by Aman Umrao
