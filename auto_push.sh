#!/bin/bash

# Fix PATH for cron (optional but recommended)
export PATH="/usr/local/bin:/opt/homebrew/bin:/usr/bin:/bin:/usr/sbin:/sbin"

# Navigate to your repo
cd /Users/sauravghimire/Documents/my-cron-test || exit 1

# Add a timestamp to the file
echo "Pushed at $(date)" >> message.txt

# Git commit and push
git add .
git commit -m "Auto update at $(date '+%Y-%m-%d %H:%M:%S')" 2>/dev/null
git push origin main
