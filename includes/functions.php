<?php
// include the init file 
include 'includes/init.php';
include 'includes/autoloader.php';

// display the main stie info
try {
       $data = new Display("main_settings");
       $siteInfo = $data->getLastRecordDESC();
       //`site_name`, `site_dcsc`, `site_tags`, `fb`, `tw`, `yt`, `rss`
       // $siteInfo['site_name'];
       
    } catch (Exception $exc) {
        echo $exc->getMessage();
    }
    
    
 // OKREŚLENIE POŁOŻENIA STRONY W SERWISIE - DEFINICJA <BASE ... />
$AbsoluteURL = (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] == 'on') ? 'https://' : 'http://';
$dirCat = dirname($_SERVER['PHP_SELF']);
$AbsoluteURL .= $_SERVER['HTTP_HOST'];
$AbsoluteURL .= $dirCat != '\\' ? $dirCat : "";
$slash = substr($AbsoluteURL, -1);

$NewURL = $slash != '/' ? $AbsoluteURL.'/' : $AbsoluteURL;

define('SERVER_ADDRESS', $NewURL);