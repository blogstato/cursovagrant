#!/bin/bash

USER="root"

databases=$(mysql -u $USER -e "SHOW DATABASES;" | tr -d "| " | grep -v Database)

for db in $databases;do
	if [[ "$db" != "information_schema" ]] && [[ "$db" != "performance_schema" ]] && [[ "$db" != "sys" ]] && [[ "$db" != "mysql" ]] && [[ "$db" != "_*" ]] ; then
	echo "Dumping database: $db"
	mysqldump -u $USER --databases $db >/vagrant/manifests/backupdbs.$db.sql
	fi
done
