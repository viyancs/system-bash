#! /bin/bash

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
