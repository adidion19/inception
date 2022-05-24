# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: adidion <adidion@student.s19.be>           +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/05/19 15:18:39 by adidion           #+#    #+#              #
#    Updated: 2022/05/24 16:29:40 by adidion          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster
RUN apt-get upgrade
RUN apt-get update
RUN apt-get install --yes curl bash vim mariadb-client php-json php-curl php-fpm php-phar php-mysqli php-iconv php
RUN mkdir -p /var/www/wordpress
RUN curl https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar -o /usr/bin/wp
RUN chmod +x ./usr/bin/wp
RUN wp core download --path=/var/www/wordpress
WORKDIR /var/www/wordpress
COPY config/config /config/wp-config
COPY ./scripts/script.sh /tmp/entrypoint.sh
RUN chmod +x /tmp/entrypoint.sh
EXPOSE 9000
ENTRYPOINT sh /tmp/entrypoint.sh