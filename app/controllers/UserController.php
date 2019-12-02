<?php

class UserController extends \Phalcon\Mvc\Controller
{

    public function indexAction()
    {
        $data_user = UserList::find(); //mencari table yang ingin ditampilkan dan ditampung kedalam variable $data_user
        $this->view->data_user=$data_user; //menampilkan hasil pencarian table
    }

}

