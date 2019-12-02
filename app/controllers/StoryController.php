<?php

class StoryController extends ControllerBase
{

    public function indexAction()
    {

    }

    public function insertDataAction()
    {
     
     $str = new Story();
     $str->judul = $this->request->getPost("txtjudul");
     $str->info = $this->request->getPost("txtinfo");
     $str->bab = $this->request->getPost("txtbab");
    
     
     if (!$str->save()) {
      echo 0;
     }
     else
     {
      echo 1;
     }


    }
}