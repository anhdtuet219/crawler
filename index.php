<?php

include "helpers/DBHelper.php";
include "core/RequestRegular.php";
include "core/Crawler.php";

set_time_limit(2147483647);

//Line Break
if (PHP_SAPI === 'cli'){
    //if run from command line
    $br = PHP_EOL;
}
else{
    //if run from browser
    $br = "<br/>";
}

$crawler = \core\Crawler::getInstance();
$crawler->beginCrawl("https://vieclam24h.vn/");
$aplopio = $crawler->getWebPagesJobType();
foreach ($aplopio as $url => $properties) {
    echo $url . $br;
}

//autoload of classes
function __autoload($className) {
    $filename = $className . ".php";
    if (is_readable($filename)) {
        require $filename;
    }
}