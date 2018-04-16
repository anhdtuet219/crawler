<?php

namespace core;

use DOMDocument;

class RequestRegular
{
    public static $instance;

    public static function getInstance()
    {
        if (!isset(self::$instance))
        {
            self::$instance = new RequestRegular();
        }
        return self::$instance;
    }

    public function getLinks($uri)
    {
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
        $HTML = @file_get_contents($uri,0, $ctx);
        $doc = new DOMDocument();
        @$doc->loadHTML($HTML);
        $links = array();
        $linksJobType = array();
        foreach ($doc->getElementsByTagName('a') as $element) {
            if ($element->hasAttribute('href') && $element->hasAttribute("class"))
            {
                $res = strcmp($element->getAttribute("class"), "link_box_panel1 text_grey2_fixed");
                if ( $res == 0 )
                {
                    $linksJobType[] = $element->getAttribute('href');
                }
                else
                {
                    $links[] = $element->getAttribute('href');
                }

            }
        }
        return array($links, $linksJobType);
    }
}