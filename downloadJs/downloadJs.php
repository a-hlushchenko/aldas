<?php
function downloadJs($file_url, $save_to)
{
	//echo $save_to;
    $content = file_get_contents($file_url);
    file_put_contents($save_to, $content);
}
// Указываем URL, затем папку от корня сайта и имя файла с расширением.
// Проверьте чтобы на папке были права на запись 777/755
// Метрика
//downloadJs('https://mc.yandex.ru/metrika/watch.js', realpath("/js") . '/var/www/transformer/data/www/aldas.ru/watch.js');
downloadJs('https://mc.yandex.ru/metrika/watch.js', '/var/www/transformer/data/www/aldas.ru/downloadJs/js/watch.js');
// Google Analytics
//downloadJs('https://www.google-analytics.com/analytics.js', realpath("./js") . '/var/www/transformer/data/www/aldas.ru/analytics.js');
downloadJs('https://www.google-analytics.com/analytics.js', '/var/www/transformer/data/www/aldas.ru/downloadJs/js/analytics.js');
///downloadJs('https://www.googletagmanager.com/gtm.js?id=GTM-MRD8BSP', realpath("./js") . '/var/www/transformer/data/www/aldas.ru/gtm.js?id=GTM-MRD8BSP');
downloadJs('https://www.googletagmanager.com/gtm.js?id=GTM-MRD8BSP', '/var/www/transformer/data/www/aldas.ru/downloadJs/js/gtm.js');
// Для скриптов без расширения
//downloadJs('http://code.jivosite.com/script/widget/NuT1gBLsC6', realpath("/js") . '/NuT1gBLsC6');
?>
