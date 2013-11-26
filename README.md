system-bash
===========

All Script for Maintenance Under System Operation that supported Bash Script.
<ol>
<li> Backup file it's important </li>
<li> Backup Database </li>
<li> To be Continue ... </li>
</ol>

Documentation
-----------------------

<b> IMPORTANT </b>

<p><b><i>word between '{' and '}' should be change into your Real name of (file,user,script)</i></b> </p>
<br/>
<strong> Installation </strong>

<p> Change owner Script and Backup Directory , so it's will be execute crontab without root access </p>
* `sudo chown {user}:{user} {bash_script.sh}`
<p> Change Permission for Execute Bash script </p>
* `sudo chmod +x {bash_script.sh} `<br/>
<p> Execute Script </p>
* `sudo sh mysql_backup.sh` or `sudo ./{bash_script.sh}`


Adding Into Cronjob
-------------------
* `crontab -e`
* adding this script to execute every date 27 in each month `0 0 27 * * sh {bash_script.sh} `


Note
-------

<p> If you have another script for maintenance , you can contribute in this repository for the better future </p>
