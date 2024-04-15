#!/bin/bash
extls=($(nmcli radio wifi))
if [[ "$extls" == "enabled" ]]; then
  $(nmcli radio wifi off)
else
    $(nmcli radio wifi on)
fi
