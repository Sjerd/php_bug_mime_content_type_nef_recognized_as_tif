ARG PHP_VER=7.3

FROM php:${PHP_VER}-fpm-alpine

COPY ./test.NEF /

RUN php -v 
RUN php -r "var_dump(mime_content_type('/test.NEF'));"
