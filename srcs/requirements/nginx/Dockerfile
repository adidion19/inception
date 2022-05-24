# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: adidion <adidion@student.s19.be>           +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/05/17 15:07:08 by adidion           #+#    #+#              #
#    Updated: 2022/05/24 18:04:17 by adidion          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster
RUN apt-get upgrade
RUN apt-get update
RUN apt-get install --yes nginx
RUN apt-get install --yes openssl
RUN mkdir -p /etc/nginx/ssl
RUN openssl req -x509 -nodes \
	-days 365 -subj "/C=BE/ST=Belgium/L=Brussels/O=42Network/OU=s19/CN=adidion.42.fr/UID=adidion"\
	-newkey rsa:4096 -keyout /etc/ssl/adidion.42.fr.key -out /etc/ssl/adidion.42.fr.crt;
RUN mkdir -p /var/run/nginx
COPY tools/nginx.conf /etc/nginx/http.d/default.conf
EXPOSE 443
CMD nginx -g "daemon off;"
