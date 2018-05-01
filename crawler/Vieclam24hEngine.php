<?php
/**
 * Created by PhpStorm.
 * User: anansaj
 * Date: 4/30/2018
 * Time: 6:52 PM
 */

namespace crawler;

use DOMDocument;
use DOMXPath;
use helpers\DBHelper;

define('SEED_URL_DEFAULT', 'https://vieclam24h.vn/viec-lam-quan-ly');
define('TYPE_JOB_TAG_DEFAULT', 'div.news-title a');
define('ITEM_TAG_DEFAULT', 'div.list-items');
define('LINK_TAG_DEFAULT', 'span.title-blockjob-main a');
define('TITLE_TAG_DEFAULT', 'span.title-blockjob-main a');
define('COMPANY_TAG_DEFAULT', 'span.title-blockjob-sub a');
define('LOCATION_TAG_DEFAULT', 'span.onecol_province');
define('SALARY_TAG_DEFAULT', 'div.note_mucluong');
define('LIMIT_DEFAULT', 10);

class Vieclam24hEngine extends AbstractEngine
{
    public static $instance;

    //helper using connect database
    public $dbHelper;

    public $mContext;

    //item tag
    public $itemTag;
    //detail of job link html tag
    public $linkTag;
    //title of job html tag
    public $titleTag;
    //company of job html tag
    public $companyTag;
    //location of job html tag
    public $locationTag;
    //salary of job html tag
    public $salaryTag;

    //list type of jobs
    public $typeJobLinks;

    public $limit;

    public static function getInstance() {
        if (!isset(self::$instance)) {
            self::$instance = new Vieclam24hEngine();
        }
        return self::$instance;
    }

    public function __construct() {
        parent::__construct();
        $this->seedUrl = SEED_URL_DEFAULT;
        $this->typeJobTag = TYPE_JOB_TAG_DEFAULT;
        $this->itemTag = $this->handleTag(ITEM_TAG_DEFAULT);
        $this->linkTag = $this->handleTag(LINK_TAG_DEFAULT);
        $this->companyTag = $this->handleTag(COMPANY_TAG_DEFAULT);
        $this->salaryTag = $this->handleTag(SALARY_TAG_DEFAULT);
        $this->locationTag = $this->handleTag(LOCATION_TAG_DEFAULT);
        $this->titleTag = $this->handleTag(TITLE_TAG_DEFAULT);
        $this->dbHelper = DBHelper::instance();
        $this->limit = LIMIT_DEFAULT;
    }

    public function process()
    {
        //get all type job links from $seedUrl
        $this->typeJobLinks = $this->getAllTypeJobLinks();
        $this->getJobsAndInsertDb();
    }

    public function setDataForParseTypeOfJobs($url, $tag) {
        $this->seedUrl = $url;
        $this->typeJobTag = $this->handleTag($tag);
    }

    public function setDataForParseJobItem($itemTag, $linkTag, $titleTag, $companyTag, $locationTag, $salaryTag) {
        $this->itemTag = $this->handleTag($itemTag);
        $this->linkTag = $this->handleTag($linkTag);
        $this->titleTag = $this->handleTag($titleTag);
        $this->companyTag = $this->handleTag($companyTag);
        $this->locationTag = $this->handleTag($locationTag);
        $this->salaryTag = $this->handleTag($salaryTag);
    }

    public function findAndDeleteParenthesis($string) {
        $splitTypeJob = explode('(', $string);
        return $splitTypeJob[0];
    }

    public function getJobsAndInsertDb()
    {
        $i = 0;
        print_r($this->typeJobLinks);
        foreach ($this->typeJobLinks['links'] as $link) {
            $title = $this->typeJobLinks['titles'][$i];
            $this->getJobsFromOneLink($this->findAndDeleteParenthesis($title), $link);
            $i++;
        }
    }

    public function getJobsFromOneLink($title, $link) {
        //with each type job url -> get all jobs from that type
        //foreach ($this->typeJobLinks as $link) {
        $HTML = @file_get_contents($link,0, $this->mContext);
        $doc = new DOMDocument();
        @$doc->loadHTML($HTML);
        $selector = new DOMXPath($doc);

        $result = $selector->query('//ul[contains(@class, "pagination")]/li/a');

        foreach ($result as $res) {
            if ($res->hasAttribute('onclick')) {
                $temp = $res->getAttribute('onclick');
                //get url from string
                preg_match_all('#\bhttps?://[^,\s()<>]+(?:\([\w\d]+\)|([^,[:punct:]\s]|/))#', $temp, $match);
                $url = $match[0][0];
                $arrayParams = explode('&', $url);
                $urlRebuild = "";
                foreach ($arrayParams as $param) {
                    if (strpos($param, 'lay_tin_mien_phi') !== false || strpos($param, 'page') !== false) {
                        $urlRebuild .= "";
                    }
                    else if (strpos($param, 'limit') !== false) {
                        //increase limit to get more articles
                        $urlRebuild .= "limit=" . $this->limit;
                    }
                    else {
                        $urlRebuild .= $param . "&";
                    }
                }
                print_r($urlRebuild);
                //getListJob
                $jobHtml = @file_get_contents($urlRebuild,0, $this->mContext);
                $html_data  = mb_convert_encoding($jobHtml , 'HTML-ENTITIES', 'UTF-8');
                @$doc->loadHTML($html_data);
                $selector = new DOMXPath($doc);
                $linkItems = $selector->query($this->linkTag);
                $titleItems = $selector->query($this->titleTag);
                $companyItems = $selector->query($this->companyTag);
                $locationItems = $selector->query($this->locationTag);
                $salaryItems = $selector->query($this->salaryTag);
                $i = 0;
                foreach ($linkItems as $link) {
                    $linkItem = 'https://vieclam24h.vn' . $link->getAttribute('href');
                    $titleItem = $titleItems[$i]->getAttribute('title');
                    $companyItem = $companyItems[$i]->nodeValue;
                    $locationItem = $locationItems[$i]->nodeValue;
                    $salaryItem = $salaryItems[$i * 3]->nodeValue;
                    $i++;
                    //build array to insert to db
                    $arr = array();
                    $arr[JOB_NAME_COLUMN] = $titleItem;
                    $arr[JOB_LINK_COLUMN] = $linkItem;
                    $arr[JOB_LOCATION_COLUMN] = $locationItem;
                    $arr[JOB_COMPANY_COLUMN] = $companyItem;
                    $arr[JOB_TYPE_COLUMN] = trim(preg_replace('/\s+/', ' ', $title));
                    $arr[JOB_SALARY_COLUMN] = trim(preg_replace('/\s+/', ' ', $salaryItem));

                    $this->dbHelper->insert(TABLE_DB, $arr);
                    echo $i;
                }
                break;
            }
        }
    }
}