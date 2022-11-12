<?php

$res = explode('/', __DIR__);
$domen = $res[count($res)-1];

//echo dirname(getcwd());


// HTTP
define('HTTP_SERVER', 'http://www.'.$domen.'.aldas.ru/');
define('MAIN_SERVER', 'https://www.aldas.ru/');

// HTTPS
define('HTTPS_SERVER', 'http://www.'.$domen.'.aldas.ru/');
define('MAIN_HTTPS_SERVER', 'https://www.aldas.ru/');

// DIR
define('DIR_WWW', '/var/www/aldas.ru/');
define('DIR_ROOT', '/var/www/aldas.ru/');
define('DIR_APPLICATION', '/var/www/aldas.ru/catalog/');
define('DIR_SYSTEM', '/var/www/aldas.ru/system/');
define('DIR_LANGUAGE', '/var/www/aldas.ru/catalog/language/');
define('DIR_TEMPLATE', '/var/www/aldas.ru/catalog/view/theme/');
define('DIR_CONFIG', '/var/www/aldas.ru/system/config/');
define('DIR_IMAGE', '/var/www/aldas.ru/image/');
define('DIR_CACHE', '/var/www/aldas.ru/system/storage/cache/');
define('DIR_DOWNLOAD', '/var/www/aldas.ru/system/storage/download/');
define('DIR_LOGS', '/var/www/aldas.ru/system/storage/logs/');
define('DIR_MODIFICATION', '/var/www/aldas.ru/system/storage/modification/');
define('DIR_UPLOAD', '/var/www/aldas.ru/system/storage/upload/');


// DB
define('DB_DRIVER', 'mysqli');
define('DB_HOSTNAME', 'localhost');
define('DB_USERNAME', 'aldas');
define('DB_PASSWORD', 'C7t2G7a5');
define('DB_DATABASE', 'aldas');
define('DB_PORT', '3306');
define('DB_PREFIX', '');
