generate_random_string() {
  cat /dev/urandom | tr -dc 'a-zA-Z0-9' | head -c 6
}

# Initialize an array to store the random strings
rs=()

# Generate and store 20 random strings of size 10 in the array
for ((i = 1; i <= 41; i++)); do
  rs[i]=$(generate_random_string)
done
#main loop to iterate windows
killall -e -r 'chrome'
for ((i = 2; i <= 19; i++)); do
{
  echo "Profile ${i}"|lolcat
  for ((j = 1; j <= 41; j++)); do
  {
  google-chrome --profile-directory="Profile ${i}" --new-window "https://www.bing.com/search?go=Search&q=${rs[j]}" & sleep 1.4
killall -e -r 'chrome'
  }
  done
}
done