FROM php:5.3-apache

EXPOSE 80

COPY start-apache2.sh /start-apache2.sh

ENTRYPOINT ["/start-apache2.sh"]
