<?php

namespace core;

class WebPage
{
    private $url;

    public function __construct($url)
    {
        $this->setUrl($url);
    }

    public function getUrl()
    {
        return $this->url;
    }

    public function setUrl($url)
    {
        if (filter_var($url, FILTER_VALIDATE_URL))
        {
            $this->url = $url;
            return true;
        }
        return false;
    }
}