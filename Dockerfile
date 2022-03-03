FROM nginx:latest
#FROM php:7.3

RUN apt-get update -y
RUN ["apt-get", "install", "php-fpm" ,"-y"]

COPY default.conf /etc/nginx/conf.d/
COPY www.conf /etc/php/7.4/fpm/pool.d/
RUN mkdir -p /run/php/
RUN php-fpm7.4 -D
RUN chmod 777 /run/php

COPY index.php /usr/share/nginx/html
COPY favicon.ico /usr/share/nginx/html

RUN echo "<?php  phpinfo(); ?>" > /usr/share/nginx/html/info.php

EXPOSE 80

WORKDIR /usr/share/nginx/html

COPY entrypoint.sh /etc/entrypoint.sh

# Comando para iniciar o NGINX no Container
#CMD ["nginx", "-g", "daemon off;"]
#CMD ["php-fpm7.4", "-F"]

ENTRYPOINT ["/etc/entrypoint.sh"]



