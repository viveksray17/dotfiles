#!/usr/bin/env bash
ping -c 1 -q cloudfare.com >&/dev/null && rclone mount --daemon google-drive: /home/vivek/Documents/GoogleDrive/ && notify-send "rclone" "Google Drive Mounted" || notify-send "rclone" "Unable to Mount\nNo internet connection"
