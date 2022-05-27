# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: adidion <adidion@student.s19.be>           +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/05/19 15:21:40 by adidion           #+#    #+#              #
#    Updated: 2022/05/27 11:30:30 by adidion          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster
RUN apt-get upgrade
RUN apt-get update
RUN apt-get install --yes mariadb-server vim mariadb-client
RUN mkdir -p /var/lib/mysqld /run/mysqld
COPY ./tools/database.sql /tmp/create_db.sql
COPY ./tools/entrypoint.sh ./
COPY ./tools/my.cnf /etc/mysql/
RUN chmod +x ./entrypoint.sh
RUN mysql_install_db --datadir=/var/lib/mysql --auth-root-authentication-method=normal
RUN chown -R mysql:mysql /var/lib/mysql
RUN chown -R mysql:mysql /run/mysqld
#EXPOSE 3306
ENTRYPOINT [ "sh", "entrypoint.sh" ]