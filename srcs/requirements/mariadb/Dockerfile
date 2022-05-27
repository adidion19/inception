# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: adidion <adidion@student.s19.be>           +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/05/19 15:21:40 by adidion           #+#    #+#              #
#    Updated: 2022/05/27 12:56:53 by adidion          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM alpine:3.14
RUN apk upgrade
RUN apk update
RUN apk add --update --nocache --quiet install --yes vim mariadb-client
RUN mkdir -p /var/lib/mysqld /run/mysqld
COPY ./tools/database.sql /tmp/create_db.sql
COPY ./tools/entrypoint.sh ./
COPY ./tools/my.cnf /etc/my.cnf.d/
RUN chmod +x ./entrypoint.sh
RUN mysql-install-db --datadir=/var/lib/mysql --auth-root-authentication-method=normal
RUN chown -R mysql:mysql /var/lib/mysql
RUN chown -R mysql:mysql /run/mysqld
#EXPOSE 3306
ENTRYPOINT [ "sh", "entrypoint.sh" ]