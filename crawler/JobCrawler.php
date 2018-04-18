<?php
/**
 * Created by PhpStorm.
 * User: anansaj
 * Date: 4/16/2018
 * Time: 10:37 PM
 */

namespace crawler;

use DOMDocument;
use DOMXPath;

class JobCrawler {

    public static $instance;

    public static function getInstance() {
        if (!isset(self::$instance)) {
            self::$instance = new JobCrawler();
        }
        return self::$instance;
    }

    public function process($seedUrl, $typeJobTag) {
        //get all type job links from $seedUrl
        $typeJobLinks = $this->getAllTypeJobLinks($seedUrl, $typeJobTag);
        print_r($typeJobLinks);
        //with each type job url -> get all jobs from that type
        foreach ($typeJobLinks as $link) {
            $this->getJobsFromTypeJobLink($link);
        }
    }

    public function getJobsFromTypeJobLink($typeJobLink) {

    }

    public function getAllTypeJobLinks($seedUrl, $typeJobTag) {
        $links = array();
        $ctx = stream_context_create(
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

        $HTML = @file_get_contents($seedUrl,0, $ctx);
        $doc = new DOMDocument();
        @$doc->loadHTML($HTML);
        $selector = new DOMXPath($doc);

        //handle type job tab for query
        $query = $this->handleTypeJobTag($typeJobTag);

        $result = $selector->query($query);
        print_r($query);
        foreach ($result as $node) {
            $href = $node->getAttribute('href');
            if (!filter_var($href, FILTER_VALIDATE_URL)) {
                $splitSeedUrl = explode('/', $seedUrl);
                $href = $splitSeedUrl[0] . '//' . $splitSeedUrl[2] . '/' . $href;
            }
            if (!in_array($href, $links)) {
                $links[] = $href;
            }
        }

        return $links;
    }

    private function handleTypeJobTag($typeJobTag) {
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