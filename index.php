<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=9; IE=8; IE=7; IE=EDGE" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
</head>
<?php

include "helpers/DBHelper.php";
header("content-type: text/html; charset=UTF-8");
set_time_limit(2147483647);
$crawler = new \crawler\JobCrawlerController();
//$crawler->getAllTypeJobLinks("https://www.careerlink.vn/", '//div[@id="search-by-category"]/ul/li/a');
//$crawler->setDataForParseTypeOfJobs("https://vieclam24h.vn/viec-lam-quan-ly", 'div.news-title  a');
//$crawler->setDataForParseJobItem('div.list-items', 'span.title-blockjob-main a', 'span.title-blockjob-main a', 'span.title-blockjob-sub a', 'span.onecol_province', 'div.note_mucluong');
$crawler->process('3');

//autoload of classes
function __autoload($className) {
    $filename = $className . ".php";
    if (is_readable($filename)) {
        require $filename;
    }
}