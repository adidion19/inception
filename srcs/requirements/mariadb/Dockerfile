# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: adidion <adidion@student.s19.be>           +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/05/19 15:21:40 by adidion           #+#    #+#              #
#    Updated: 2022/05/23 11:03:24 by adidion          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster
RUN apt-get upgrade
RUN apt-get update
RUN apt-get install --yes mariadb-server vim
RUN mkdir -p /var/lib/mysqld /run/mysqld
RUN mariadb-install-db --datadir=/var/lib/mysql --auth-root-autentification-method=normal
COPY tools/setup.sh .
COPY ./tools/my.cnf /etc/mysql
COPY ./tools/setup.sh .
EXPOSE 3306
CMD /setup.sh