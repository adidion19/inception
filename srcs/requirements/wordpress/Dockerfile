# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: adidion <adidion@student.s19.be>           +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/05/19 15:18:39 by adidion           #+#    #+#              #
#    Updated: 2022/06/01 17:17:27 by adidion          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM alpine:3.14
RUN apk update
RUN apk add --update --no-cache curl bash vim mariadb-client php7 php-phar php-json php-curl php-fpm php-mysqli php-iconv
RUN mkdir -p /var/www/wordpress
RUN curl https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar --output /usr/bin/wp
RUN chmod +x ./usr/bin/wp
RUN wp core download --path=/var/www/wordpress
WORKDIR /var/www/wordpress
COPY config/wp-config /config/wp-config
COPY ./tools/entrypoint.sh /tmp/entrypoint.sh
RUN chmod +x /tmp/entrypoint.sh
ENTRYPOINT ["sh", "/tmp/entrypoint.sh"]