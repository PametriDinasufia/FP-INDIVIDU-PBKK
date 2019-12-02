<?php

class LoginController extends \Phalcon\Mvc\Controller
{
    public function indexAction()
       {
     
       }
       
       
    private function _registerSession(UserList $user)
       {
     $this->session->set('auth', array(
               'isLog' => 'Y',
               'id' => $user->id,
               'username' => $user->username
           ));
       }

    public function loginprocessAction()
        {
               if ($this->request->isPost()) {
          $username = $this->request->getPost('username');
                     $password = $this->request->getPost('password');
                     //melakukan pencarian pada model UserList 
                     //yang mana mengarah pada tabel user_list dan field yang 
                     //di filter adalah username.
                      $userlist = UserList::findFirst("username='$username'");
          if ($userlist)
          {
           if($password==$userlist->password)
           {
            $this->_registerSession($userlist);
            $this->response->redirect('home');
            }
          }
          echo "Username atau password salah";
          return $this->dispatcher->forward(array("action" => "index"));
         }
        }

    public function logoutAction()
        {
        $this->session->destroy();
        echo "Session sudah di destroy";
        }

}