#!/bin/bash

function login_and_check {
  echo "Logging into $1 ..."
  output=$(mega-login  "$1" "$2" 2>/dev/null)
  if [[ $output == *"Your account's security needs upgrading"* ]]; then
    mega-confirm --security && echo "Confirmed security upgrade for $1"
  fi
}

while IFS=: read -r username password; do
  login_and_check $username $password
  if [[ $output == *"Already logged in. Please log out first"* ]]; then
    mega-logout
    login_and_check $username $password
  fi
  mega-logout &>/dev/null && echo "Logged out of $username"
  
  sleep 2
done < mega_creds.txt
