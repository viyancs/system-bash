#!/bin/sh
# This Script used to Backup Files
# You can Change backup_files and destination to backup your files
# Please keep Simple and Clean Code
# If You have Question Please contact me (msofyancs@gmail.com)

# What to backup. 
backup_files="/opt/local/apache2/htdocs/homework"

# Create archive filename.
day=$(date +%A)
month=$(date +%m)
year=$(date +%Y)
flag="$day-$month-$year"
archive_file="files.tgz"

# Where to backup 
dest="/opt/backup/www"

# Create Folder by Date
mkdir -p "$backup_files/$flag"

# Print start status message.
echo "Backing up $backup_files to $dest/$flag/$archive_file"
date
echo

# Backup the files using tar.
tar czf $dest/$flag/$archive_file $backup_files

# Print end status message.
echo
echo "Backup finished"
date

# Long listing of files in $dest to check file sizes.
ls -lh $dest
