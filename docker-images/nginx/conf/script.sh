#!/bin/bash

#Starting php
/usr/sbin/php-fpm

# Starting nginx
nginx -g 'daemon off;'
