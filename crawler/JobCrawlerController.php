<?php
/**
 * Created by PhpStorm.
 * User: anansaj
 * Date: 4/16/2018
 * Time: 10:37 PM
 */

namespace crawler;
include ("db_config");

define('VIEC_LAM_24H', '1');
define('CAREERLINK', '2');
define('CAREERBUILDER', '3');

use DOMDocument;
use DOMXPath;

class JobCrawlerController {

    public static $instance;

    //helper using connect database
    public $engine;

    public static function getInstance() {
        if (!isset(self::$instance)) {
            self::$instance = new JobCrawlerController();
        }
        return self::$instance;
    }

    public function __construct() {

    }

    public function process($type) {
        //get all type job links from $seedUrl
        switch ($type) {
            case VIEC_LAM_24H:
                $this->engine = Vieclam24hEngine::getInstance();
                $this->engine->process();
                break;
            case CAREERLINK:
                $this->engine = CareerlinkEngine::getInstance();
                $this->engine->process();
                break;
            case CAREERBUILDER:
                $this->engine = CareerbuilderEngine::getInstance();
                $this->engine->process();
                break;
        }
    }



}