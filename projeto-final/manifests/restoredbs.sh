#!/bin/bash

USER="root"

databases=$(ls -1 /vagrant/manifests/backupdbs.*.sql)

for db in $databases; do
	echo "Importing $db ..."
	mysql -u $USER < $db
done

