# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: adidion <adidion@student.s19.be>           +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/05/19 15:18:39 by adidion           #+#    #+#              #
#    Updated: 2022/05/23 11:10:15 by adidion          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster
RUN apt-get upgrade
RUN apt-get update
RUN apt-get install --yes wordpress
RUN apt-get install --yes sysvinit-utils
RUN apt-get -y install php-cgi php-common php-fpm php-pear php-mbstring
RUN apt-get -y install php-zip php-net-socket php-gd php-xml-util php-gettext php7.3-mysql php-bcmath php-mysql
COPY ./tools/setup.sh /
COPY ./tools/php.ini /etc/php/7.3/fpm
COPY ./tools/php-fpm.conf /etc/php/7.3/fpm
COPY ./tools/www.conf /etc/php/7.3/fpm/pool.d
EXPOSE 9000
RUN mkdir -p /run/php
CMD /usr/sbin/php-fpm7.3 --fpm-config /etc/php/7.3/fpm/php-fpm.conf