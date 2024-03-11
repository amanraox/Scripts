#!/bin/bash
extls=($(gnome-extensions list --enabled))
k=0
j=0
tgl="hidetopbar@mathieu.bidon.ca"
for ele in "${extls[@]}"; do
  if [[ "$tgl" == "$ele" ]]; then
    k=1
  fi
done
if [ "$k" -eq 1 ]; then
    $(gnome-extensions disable hidetopbar@mathieu.bidon.ca)
else
    $(gnome-extensions enable hidetopbar@mathieu.bidon.ca)
fi
