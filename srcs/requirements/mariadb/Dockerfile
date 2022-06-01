# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: adidion <adidion@student.s19.be>           +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/05/19 15:21:40 by adidion           #+#    #+#              #
#    Updated: 2022/06/01 17:19:44 by adidion          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM alpine:3.14
RUN apk update
RUN apk add --update --no-cache mariadb mariadb-client vim
RUN mkdir -p /var/lib/mysqld /run/mysqld
COPY ./tools/create_db.sql /tmp/create_db.sql
COPY ./tools/entrypoint.sh ./
COPY ./tools/mariadb-server.cnf /etc/my.cnf.d/
RUN chmod +x ./entrypoint.sh
RUN mariadb-install-db --datadir=/var/lib/mysql --auth-root-authentication-method=normal
RUN chown -R mysql:mysql /var/lib/mysql
RUN chown -R mysql:mysql /run/mysqld
ENTRYPOINT [ "sh", "entrypoint.sh" ]