Starting from php 7.3.2 function mime_content_type image/x-nikon-nef gets recognized as image/tiff. While php 7.3.1 works correctly.

```
docker build --no-cache --build-arg PHP_VER=7.3.2 .

Status: Downloaded newer image for php:7.3.2-fpm-alpine
 ---> 4aa5f20b915c
Step 3/5 : COPY ./test.NEF /
 ---> 5bc319d2ea82
Step 4/5 : RUN php -v
 ---> Running in 13a90ca5f1a0
PHP 7.3.2 (cli) (built: Mar  7 2019 23:41:30) ( NTS )
Copyright (c) 1997-2018 The PHP Group
Zend Engine v3.3.2, Copyright (c) 1998-2018 Zend Technologies
Removing intermediate container 13a90ca5f1a0
 ---> dd28790df676
Step 5/5 : RUN php -r "var_dump(mime_content_type('/test.NEF'));"
 ---> Running in 1b146ed98546
string(10) "image/tiff"

```
