<?php

namespace core;

use \Exception as Exception;
use core\WebPage as WebPage;

class Crawler
{

    protected static $instance = null;

    protected $depth = -1;

    protected $linksAllowed = 60;

    private $webPages = array();

    private $webPagesJobType = array();

    public static function getInstance()
    {
        if (self::$instance == null)
        {
            self::$instance = new Crawler();
        }
        return self::$instance;
    }

    public function getWebPages()
    {
        return $this->webPages;
    }

    public function getWebPagesJobType()
    {
        return $this->webPagesJobType;
    }

    protected function setWebPages(WebPage $WebPage)
    {
        $this->webPages[$WebPage->getUrl()] = $WebPage;
    }

    protected function setWebPagesJobType(WebPage $WebPage)
    {
        $this->webPagesJobType[$WebPage->getUrl()] = $WebPage;
    }

    public function beginCrawl($uri)
    {
        $crawlerRequest = RequestRegular::getInstance();
        if ($this->checkLimits() === true)
        {
            $urls = $crawlerRequest->getLinks($uri);
            //add job type link to webpages
            foreach ($urls[1] as $jobTypeUrl)
            {
                //break if limit is hit
                if($this->linksAllowed != -1)
                {
                    if ($this->linksAllowed <= count($this->getWebPagesJobType()))
                        return false;
                }

                $WebPage = new WebPage($jobTypeUrl);
                if ($WebPage->getUrl() != null)
                {
                    //check if uri has been checked
                    if (!array_key_exists($jobTypeUrl, $this->getWebPagesJobType()))
                    {
                        $this->setWebPagesJobType($WebPage);
                    }
                }
                else{
                    $key = array_search($jobTypeUrl, $urls);
                    unset($urls[$key]);
                }
            }

            //continue access to next depth
            foreach ($urls[0] as $url)
            {
                //break if limit is hit
                if($this->linksAllowed != -1)
                {
                    if ($this->linksAllowed <= count($this->getWebPagesJobType()))
                        return false;
                }

                $WebPage = new WebPage($url);
                if ($WebPage->getUrl() != null)
                {
                    if ($this->depth != -1)
                    {
                        $this->depth--;
                    }
                    //check if uri has been checked
                    if (!array_key_exists($url, $this->getWebPages()))
                    {
                        $this->setWebPages($WebPage);
                        $this->beginCrawl($url);
                    }
                }
            }
        }
    }

    public function checkLimits()
    {
        if ($this->depth != -1)
        {
            if ($this->depth <= 0)
                return false;
        }
        if($this->linksAllowed != -1)
        {
            if ($this->linksAllowed <= count($this->getWebPagesJobType()))
                return false;
        }

        return true;
    }

    public function getDepth()
    {
        return $this->depth;
    }

    public function setDepth($depth){
        if (!is_numeric($depth))
            throw new Exception("Depth needs to be Numeric");
        $this->depth = $depth;
    }

    public function getLinksAllowed()
    {
        return $this->linksAllowed;
    }
    public function setLinksAllowed($linksAllowed)
    {
        if (!is_numeric($linksAllowed))
            throw new Exception("Links Allowed needs to be Numeric");
        $this->linksAllowed = $linksAllowed;
    }
}