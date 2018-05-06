<?php
/**
 * Created by PhpStorm.
 * User: anansaj
 * Date: 4/30/2018
 * Time: 7:04 PM
 */
namespace crawler;

use DOMDocument;
use DOMXPath;

abstract class AbstractEngine
{

    //link to list type of jobs
    public $seedUrl;
    //type of job html tag
    public $typeJobTag;

    //helper using connect database
    public $dbHelper;

    public $mContext;

    //job page tag
    public $jobPageTag;
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

    private static $_instances = array();

    public static function getInstance() {
        $class = get_called_class();
        if (!isset(self::$_instances[$class])) {
            self::$_instances[$class] = new $class();
        }
        return self::$_instances[$class];
    }

    public function __construct()
    {
        $this->mContext = stream_context_create(
            array(
                "ssl"=>array(
                    "verify_peer"=>false,
                    "verify_peer_name"=>false,
                ),
                'http' => array(
                    'header'=> "Content-Type: text/html; charset=utf-8",
                )
            )
        );
        $this->dbHelper = \helpers\DBHelper::instance();
    }

    public function setDataForParseTypeOfJobs($url, $tag) {
        $this->seedUrl = $url;
        $this->typeJobTag = $this->handleTag($tag);
    }

    public function setDataForParseJobItem($linkTag, $titleTag, $companyTag, $locationTag, $salaryTag, $jobPageTag) {
        $this->jobPageTag = $this->handleTag($jobPageTag);
        $this->linkTag = $this->handleTag($linkTag);
        $this->titleTag = $this->handleTag($titleTag);
        $this->companyTag = $this->handleTag($companyTag);
        $this->locationTag = $this->handleTag($locationTag);
        $this->salaryTag = $this->handleTag($salaryTag);
    }

    public function setLimit($limit) {
        $this->limit = $limit;
    }

    public function getAllTypeJobLinks() {
        $typeJobInfo = array();
        $links = array();
        $titles = array();
        $HTML = @file_get_contents($this->seedUrl,0, $this->mContext);
        $doc = new DOMDocument();
        $html_data  = mb_convert_encoding($HTML , 'HTML-ENTITIES', 'UTF-8');
        @$doc->loadHTML($html_data);
        $selector = new DOMXPath($doc);

        $result = $selector->query($this->handleTag($this->typeJobTag));
        foreach ($result as $node) {
            $href = $node->getAttribute('href');
            $title = $node->nodeValue;
            if (!filter_var($href, FILTER_VALIDATE_URL)) {
                $splitSeedUrl = explode('/', $this->seedUrl);
                $href = $splitSeedUrl[0] . '//' . $splitSeedUrl[2] . $href;
            }
            if (!in_array($href, $links)) {
                $links[] = $href;
                $titles[] = $title;
            }
        }

        $typeJobInfo['titles'] = $titles;
        $typeJobInfo['links'] = $links;

        return $typeJobInfo;
    }

    public abstract function process();
    public abstract function getJobsAndInsertDb();

    protected function handleTag($typeJobTag) {
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

    public function getSeedUrl() {
        return $this->seedUrl;
    }

}