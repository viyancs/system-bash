system-bash
===========

All Script for Maintenance Under System Operation that supported Bash Script.
<ol>
<li> Backup file it's important </li>
<li> Backup Database </li>
<li> To be Continue ... </li>
</ol>

mysql_backup.sh
-----------------------

<strong> Installation </strong>

<p> Change owner Script and Backup Directory , so it's will be execute crontab without root access </p>
* `sudo chown {user}:{user} mysql_backup.sh`
<p> Change Permission for Execute Bash script </p>
* `sudo chmod +x mysql_backup.sh `<br/>
<p> Execute Script </p>
* `sudo sh mysql_backup.sh` or `sudo ./mysql_backup.sh`

<strong> Adding Into Cronjob </strong>
* `crontab -e`
* adding this script to execute every date 27 in each month `0 0 27 * * sh /opt/backup/mysql_backup.sh `


Note
-------

<p> If you have another script for maintenance , you can contribute in this repository for the better future </p>
