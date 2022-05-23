# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: adidion <adidion@student.s19.be>           +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/05/19 15:21:40 by adidion           #+#    #+#              #
#    Updated: 2022/05/23 15:40:59 by adidion          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster
RUN apt-get upgrade
RUN apt-get update
RUN apt-get install --yes mariadb-server vim mariadb-client
RUN mkdir -p /var/lib/mysqld /run/mysqld
#RUN mariadb-install-db --datadir=/etc/mysql --auth-root-authentication-method=normal
COPY ./tools/my.cnf /etc/mysql
COPY ./tools/setup.sh /
# RUN chown -R mysql:mysql /ect/mysql
# RUN chown -R mysql:mysql /run/mysqld
EXPOSE 3306
CMD /setup.sh