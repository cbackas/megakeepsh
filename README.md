# Mega Account Refresh Script

This script automates the process of refreshing MEGA accounts. It reads usernames and passwords from a text file and logs in and out of each account on mega so that they stay active and don't get restricted.

## Usage

1. Prepare your `mega_creds.txt` file with one username:password pair per line, like so:
```
email1:password1
email2:password2
email3:password3
```

2. Run the script with the command: `./mega_refresh.sh`
