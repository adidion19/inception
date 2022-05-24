# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: adidion <adidion@student.s19.be>           +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/05/19 15:21:40 by adidion           #+#    #+#              #
#    Updated: 2022/05/24 14:20:42 by adidion          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster
RUN apt-get upgrade
RUN apt-get update
RUN apt-get install --yes mariadb vim mariadb-client
RUN mkdir -p /var/lib/mysqld /run/mysqld
COPY ./tools/database.sql /tmp/create_db.sql
COPY ./tools/setup.sh ./
COPY ./tools/my.cnf /etc/my.cnf.d/
RUN chmod +x ./setup.sh
RUN mariadb-install-db --datadir=/var/lib/mysql --auth-root-authentication-method=normal
RUN chown -R mysql:mysql /ect/mysql
RUN chown -R mysql:mysql /run/mysqld
EXPOSE 3306
CMD /setup.sh