# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: adidion <adidion@student.s19.be>           +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/05/19 15:18:39 by adidion           #+#    #+#              #
#    Updated: 2022/05/19 15:21:22 by adidion          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster
RUN apt-get upgrade
RUN apt-get update
COPY ./tools/php.ini /etc/php/7.3/fpm
COPY ./tools/php-fpm.conf /etc/php/7.3/fpm
COPY ./tools/www.conf /etc/php/7.3/fpm/pool.d
EXPOSE 9000
RUN mkdir -p /run/php
CMD /usr/sbin/php-fpm7.3 --nodeamonize