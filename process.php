<?php

require 'libs/Slim/Slim.php';
require_once 'helpers/DBHelper.php';
require 'crawler/JobCrawlerController.php';
require 'crawler/Vieclam24hEngine.php';
require 'crawler/CareerbuilderEngine.php';
require 'crawler/CareerlinkEngine.php';

header("content-type: text/html; charset=UTF-8");
set_time_limit(2147483647);

\Slim\Slim::registerAutoloader();

$app = new \Slim\Slim();


$app->post('/jobs', function () use ($app) {
    $response = array();
    $source = $_POST["source"];
    $limit = $_POST["limit-jobs"];
    $response["ok"] = "ok";
    $response["source"] = $source;
    $response["limit"] = $limit;
    $crawler = new \crawler\JobCrawlerController();
    $crawler->process($source, $limit);
    echoResponse(200, $response);
});

//
//include "helpers/DBHelper.php";
//header("content-type: text/html; charset=UTF-8");
//set_time_limit(2147483647);
//$crawler = new \crawler\JobCrawlerController();
////$crawler->getAllTypeJobLinks("https://www.careerlink.vn/", '//div[@id="search-by-category"]/ul/li/a');
////$crawler->setDataForParseTypeOfJobs("https://vieclam24h.vn/viec-lam-quan-ly", 'div.news-title  a');
////$crawler->setDataForParseJobItem('div.list-items', 'span.title-blockjob-main a', 'span.title-blockjob-main a', 'span.title-blockjob-sub a', 'span.onecol_province', 'div.note_mucluong');
//$crawler->process('3');
//

function echoResponse($status_code, $response) {
    $app = \Slim\Slim::getInstance();
    // Http response code
    $app->status($status_code);

    // setting response content type to json
    $app->contentType('application/json');

    echo json_encode($response);
}

//autoload of classes
function __autoload($className) {
    $filename = $className . ".php";
    if (is_readable($filename)) {
        require $filename;
    }
}

$app->run();