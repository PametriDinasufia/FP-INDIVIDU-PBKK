<?php

//class StoryController extends ControllerBase
 class StoryController extends \Phalcon\Mvc\Controller
{

    // public function indexAction()
    // {
    //     //$data_user = Story::find();
    //     $data_user = UserList::find();
    //     $this->view->data_user=$data_user;

    // }
    public function indexAction()
    {
         $data_story = Story::find();
         $this->view->data_story=$data_story;
        
    }

    public function insertDataAction()
    {
     
      $str = new Story();
      $str->assign(array(
      $str->judul = $this->request->getPost("txtjudul"),
      $str->info = $this->request->getPost("txtinfo"),
      $str->bab = $this->request->getPost("txtbab"),
      $str->file = $this->request->getPost("uploadfile"),
      )
      );

    //  $str = new Story();
    //  $str->judul = $this->request->getPost("txtjudul");
    //  $str->info = $this->request->getPost("txtinfo");
    //  $str->bab = $this->request->getPost("txtbab");
    //  $str->file = $this->request->getPost("uploadfile");
    
     
     if (!$str->save()) {
      echo 0;
     }
     else
     {
      echo 1;
     }


    }

    public function editAction($id)
   {
   $str = Story::findFirst($id);
   $this->view->id=$str->id;
   $this->view->judul=$str->judul;
   $this->view->info=$str->info;
   $this->view->bab=$str->bab;
   $this->view->file=$str->file;
   }

   public function updateAction()
   {
   $id = $this->request->getPost("id");
   $str = Story::findFirst($id);

        $str->id = $id;
     $str->judul = $this->request->getPost("txtjudul");
     $str->info = $this->request->getPost("txtinfo");
     $str->bab = $this->request->getPost("txtbab");
    $str->file = $this->request->getPost("uploadfile");

   if (!$str->save()) {
     echo "Gagal Disimpan";
     }
    else
     {
    echo "Data Berhasil Diupdate";
    $this->response->redirect('story');
     }
   }

   public function delAction($id){
    $str = Story::findFirst($id);
    $str->delete();

    return $this->response->redirect('story');
  }


}