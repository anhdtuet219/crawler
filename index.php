
<?php

include "helpers/DBHelper.php";
include "core/RequestRegular.php";
include "core/Crawler.php";
header("content-type: text/html; charset=UTF-8");
set_time_limit(2147483647);
$crawler = new \crawler\JobCrawler();
//$crawler->getAllTypeJobLinks("https://www.careerlink.vn/", '//div[@id="search-by-category"]/ul/li/a');
$crawler->setDataForParseTypeOfJobs("https://vieclam24h.vn/viec-lam-quan-ly", 'div.news-title  a');
$crawler->setDataForParseJobItem('div.list-items', 'span.title-blockjob-main a', 'span.title-blockjob-main a', 'span.title-blockjob-sub a', 'span.onecol_province', 'div.note_mucluong');
$crawler->process();

//autoload of classes
function __autoload($className) {
    $filename = $className . ".php";
    if (is_readable($filename)) {
        require $filename;
    }
}