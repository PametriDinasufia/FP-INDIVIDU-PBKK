<?php

class IndexController extends ControllerBase
{

    public function indexAction()
    {

    }

    public function uploadAction()
    {
         #check if there is any file
        if($this->request->hasFiles() == true){
            $uploads = $this->request->getUploadedFiles();
            $isUploaded = false;
            #do a loop to handle each file individually
            foreach($uploads as $upload){
            #define a “unique” name and a path to where our file must go
            $path = ‘temp/’.md5(uniqid(rand(), true)).’-’.strtolower($upload->getname());
            #move the file and simultaneously check if everything was ok
            ($upload->moveTo($path)) ? $isUploaded = true : $isUploaded = false;
            }
            #if any file couldn’t be moved, then throw an message
            ($isUploaded) ? die('Files successfully uploaded.') : die('Some error ocurred.');
        }else{
            #if no files were sent, throw a message warning user
            die('You must choose at least one file to send. Please try again.');
        }
    }

}

