<?php

/**
 * Created by PhpStorm.
 * User: matthewboddy
 * Date: 13/1/17
 * Time: 3:28 PM
 */

class VisibilityExtension extends Extension
{
    public function getVisibility()
    {
        return strpos($this->owner->Subtitle, 'Hire:') === false 
            ? 'hidden' : 'visible';
    }
}