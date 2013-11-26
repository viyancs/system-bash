#! /bin/bash
# This script used to generate backup of all database on mysql
# You can modify this script like you want , example you can modify folder for Backup Directory, because for now I just try to Backup every one month
# You can modify Crontab for run dhis script , You can see in Readme.md for the description and usage
# This script didn't backup database information_schema and performance_schema
# Please keep Simple and Clean Code
# If You have Question Please contact me (msofyancs@gmail.com)

DAY=$(date +%A)
MONTH=$(date +%m)
YEAR=$(date +%Y)
FLAG="$DAY-$MONTH-$YEAR"
BACKUP_DIR="/home/"
MYSQL_USER="root"
MYSQL=/usr/bin/mysql
MYSQL_PASSWORD="*******"
MYSQLDUMP=/usr/bin/mysqldump
 
mkdir -p "$BACKUP_DIR/$FLAG"
 
databases=`$MYSQL --user=$MYSQL_USER -p$MYSQL_PASSWORD -e "SHOW DATABASES;" | grep -Ev "(Database|information_schema)"`
 
for db in $databases; do
  if [ "$db" = "information_schema" ]; then continue;
  elif [ "$db" = "performance_schema" ]; then continue; 
  fi
  $MYSQLDUMP --force --opt --user=$MYSQL_USER -p$MYSQL_PASSWORD --databases $db | gzip > "$BACKUP_DIR/$FLAG/$db.gz"
done
