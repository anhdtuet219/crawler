<?php
/**
 * Created by PhpStorm.
 * User: anansaj
 * Date: 4/16/2018
 * Time: 10:37 PM
 */

namespace crawler;

define('VIEC_LAM_24H', 'vieclam24h.vn');

use DOMDocument;
use DOMXPath;

class JobCrawler {

    public static $instance;

    //link to list type of jobs
    public $seedUrl;
    //type of job html tag
    public $typeJobTag;

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

    public static function getInstance() {
        if (!isset(self::$instance)) {
            self::$instance = new JobCrawler();
        }
        return self::$instance;
    }

    public function __construct() {

        $this->mContext = stream_context_create(
            array(
                "ssl"=>array(
                    "verify_peer"=>false,
                    "verify_peer_name"=>false,
                ),
                'http'=>array(
                    'header'=>"Content-type: text/html",
                )
            )
        );

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

    public function process() {
        //get all type job links from $seedUrl
        $this->typeJobLinks = $this->getAllTypeJobLinks();

        if (strpos($this->seedUrl, VIEC_LAM_24H) !== false) {
            //link is vieclam24h.com
            echo "a";
            $this->getJobsViecLam24h();
        }
    }

    public function getJobsViecLam24h() {
        //with each type job url -> get all jobs from that type
        //foreach ($this->typeJobLinks as $link) {
        $link = $this->typeJobLinks[0];


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
                //delete param lay_tin_mien_phi and page in html and set limit large
                parse_str($url, $params);
                $params['limit'] = 10000000;
                unset($params['lay_tin_mien_phi']);
                unset($params['page']);
                print_r($url);
                //getListJob
                $jobHtml = @file_get_contents($url,0);
                print_r($jobHtml);
                @$doc->loadHTML($jobHtml);
                $selector = new DOMXPath($doc);
                $linkItems = $selector->query($this->linkTag);
                $titleItems = $selector->query($this->titleTag);
                $companyItems = $selector->query($this->companyTag);
                $locationItems = $selector->query($this->locationTag);
                $salaryItems = $selector->query($this->salaryTag);

                for ($i = 0; $i <= count($linkItems); $i++) {
                    $linkItem = 'https://vieclam24h.vn/' . $linkItems[$i]->getAttribute('href');
                    $titleItem = utf8_encode($titleItems[$i]->getAttribute('title'));
                    $companyItem = utf8_encode($companyItems[$i]->nodeValue);
                    $locationItem = utf8_encode($locationItems[$i]->nodeValue);
                    $salaryItem = utf8_encode($salaryItems[$i]->nodeValue);

                    print_r('('. $linkItem . ', ' . $titleItem . ', ' . $companyItem . ', '. $locationItem . ', ' . $salaryItem . ')' );
                }
                break;
            }
        }
        //}
    }



    public function getAllTypeJobLinks() {
        $links = array();
        $HTML = @file_get_contents($this->seedUrl,0, $this->mContext);
        $doc = new DOMDocument();
        @$doc->loadHTML($HTML);
        $selector = new DOMXPath($doc);

        $result = $selector->query($this->typeJobTag);
        foreach ($result as $node) {
            $href = $node->getAttribute('href');
            if (!filter_var($href, FILTER_VALIDATE_URL)) {
                $splitSeedUrl = explode('/', $this->seedUrl);
                $href = $splitSeedUrl[0] . '//' . $splitSeedUrl[2] . '/' . $href;
            }
            if (!in_array($href, $links)) {
                $links[] = $href;
            }
        }

        return $links;
    }

    private function handleTag($typeJobTag) {
        $listTag = explode(" ", $typeJobTag);
        $strRes = "/";
        foreach ($listTag as $tag) {
            if (strpos($tag, '.') !== false) {
                //if tag has class attribute
                $tmp = explode('.', $tag);
                if (strlen($tmp[0]) == 0) {
                    $strRes = $strRes . '/*' . '[contains(@class,"' .$tmp[1]. '")]';
                }
                else {
                    $strRes = $strRes . '/' . $tmp[0] . '[contains(@class,"' .$tmp[1]. '")]';
                }

            }
            else if (strpos($tag, '#') !== false) {
                //if tag has id attribute
                $tmp = explode('#', $tag);
                if (strlen($tmp[0]) == 0) {
                    $strRes = $strRes . '/*' . '[contains(@id,"' .$tmp[1]. '")]';
                }
                else {
                    $strRes = $strRes . '/' . $tmp[0] . '[contains(@id,"' .$tmp[1]. '")]';
                }
            }
            else {
                if (strlen($tag) > 0) {
                    $strRes = $strRes . '/' . $tag;
                }
                else {
                    $strRes .= '';
                }
            }
        }
        return $strRes;
    }

}