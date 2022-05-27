# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: adidion <adidion@student.s19.be>           +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/05/17 15:07:08 by adidion           #+#    #+#              #
#    Updated: 2022/05/27 11:31:35 by adidion          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster
RUN apt-get upgrade
RUN apt-get update
RUN apt-get install --yes nginx
RUN apt-get install --yes openssl
RUN mkdir -p /etc/nginx/ssl
RUN openssl req -x509 -nodes \
	-subj "/C=BE/ST=Belgium/L=Brussels/O=42/OU=19/CN=adidion"\
	-keyout /etc/nginx/ssl/adidion.42.fr.key -out /etc/nginx/ssl/adidion.42.fr.crt;
RUN mkdir -p /var/run/nginx
COPY tools/nginx.conf /etc/nginx/sites-enabled/
EXPOSE 443
CMD nginx -g "daemon off;"
