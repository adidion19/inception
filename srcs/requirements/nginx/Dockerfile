# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: adidion <adidion@student.s19.be>           +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/05/17 15:07:08 by adidion           #+#    #+#              #
#    Updated: 2022/05/19 10:50:44 by adidion          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster
RUN apt-get upgrade
RUN apt-get update
RUN apt-get install --yes nginx
RUN apt-get install --yes openssl
COPY tools/nginx.conf /etc/nginx
COPY tools/wordpress.conf /etc/nginx/sites-enabled/
RUN openssl req -x509 -nodes \
	-days 365 -subj "/C=BE/ST=Belgium/L=Brussels/O=42Network/OU=s19/CN=adidion.42.fr/UID=adidion"\
	-newkey rsa:4096 -keyout /etc/ssl/nginx-selfsigned.key -out /etc/ssl/nginx-selfsigned.crt;
EXPOSE 443
CMD nginx -g "daemon off;"
