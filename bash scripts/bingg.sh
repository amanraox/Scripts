
nu=$1
if [ "$#" -eq 0 ]; then
    echo "Aman you got Error:  "Please provide time argument""|lolcat
    exit 1
else
#main loop to iterate windows
killall -e -r 'chrome'
for ((i = 2; i <= 19; i++)); do
{
  echo "Profile ${i}"|lolcat
  google-chrome --profile-directory="Profile ${i}" --new-window "https://www.bing.com/search?go=Search&q=baller" & sleep ${nu}
killall -e -r 'chrome' 
}
done
fi