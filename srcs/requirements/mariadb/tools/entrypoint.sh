cat .setup 2> /dev/null
if [ $? -ne 0 ]; then
	# https://dev.mysql.com/doc/refman/8.0/en/mysqld-safe.html
	# Le & va etre utilise pour effectuer une "modification sur le serveur MySQL" - mysql driver avec des options
	usr/bin/mysqld_safe --datadir=/var/lib/mysql &

	# Il est necessaire d'attendre que la base de donnee soit bien accessible, mysql lance
	while ! mysqladmin ping -h "$MARIADB_HOST" --silent; do
		sleep 1
	done

	eval "echo \"$(cat /tmp/create_db.sql)\"" | mariadb
	touch .setup
fi
usr/bin/mysqld_safe --datadir=/var/lib/mysql