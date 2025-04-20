#!/bin/bash

# Fix PATH for cron (optional but recommended)
export PATH="/opt/anaconda3/bin:/opt/anaconda3/condabin:/opt/homebrew/bin:/opt/homebrew/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

# Navigate to your repo
cd /Users/sauravghimire/Documents/my-cron-test || exit 1

# Add a timestamp to the file
echo "Pushed at $(date)" >> message.txt

# Git commit and push
echo "Using PATH: $PATH" >> cron.log
git add message.txt
if ! git diff --cached --quiet; then
	git commit -m "Auto update at $(date '+%Y-%m-%d %H:%M:%S')"
	git push origin main
else
	echo "[$(date)] Nothing to commit" >> cron.log
fi
