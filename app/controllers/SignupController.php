<?php

//class SignupController extends \Phalcon\Mvc\Controller

class SignupController extends ControllerBase
{

    public function indexAction()
    {
        $data_user = User::find();
        $this->view->data_user=$data_user;
    }

// //menyimpan data yang dikirim oleh form signup dan disimpan kedalam database storeydea
//     public function registerAction()
//     {
//            $sign_up = new User(); //select models atau tempat dimana kita akan menyimpannya
 
//            $sign_up->assign(array(
//                     'username' => $this->request->getPost('username'), //menampung data username yang dikirimkan dari form sign up menuju controller untuk disimpan di dalam database.
//                     'email' => $this->request->getPost('email'),
//                     'password' => $this->request->getPost('password'),
//                     )
//                 );

//         $sign_up->save(); //command untuk menyimpan ke dalam database.
//             }
//         }

        // public function registerAction()
//     {

//     //     $usr = new UserList();
//     //  $usr->username = $this->request->getPost("txtusername");
//     //  $usr->email = $this->request->getPost("txtemail");
//     //  $usr->password = $this->request->getPost("txtpassword");

//     //  $usr = new UserList();
//     //  $usr->username = $this->request->getPost("username");
//     //  $usr->email = $this->request->getPost("email");
//     //  $usr->password = $this->request->getPost("password");


//       $sign_up = new UserList(); //select models atau tempat dimana kita akan menyimpannya
//            $sign_up->assign(array(
//                     'username' => $this->request->getPost('username'), //menampung data username yang dikirimkan dari form sign up menuju controller untuk disimpan di dalam database.
//                     'email' => $this->request->getPost('email'),
//                     'password' => $this->request->getPost('password'),
//                     )
//                 );


//      if (!$sign_up->save()) {
//       echo 0;
//      }
//      else
//      {
//       echo 1;
//      }
//     //  echo "Berhasil Disimpan!";
    
//     }

public function registerAction()
{
    // $sign_up = new User();
    //  $sign_up->username = $this->request->getPost("username");
    //  $sign_up->email = $this->request->getPost("email");
    //  $sign_up->password = $this->request->getPost("password");
   

       $sign_up = new User();

       $sign_up->assign(array(
                'username' => $this->request->getPost('username'),
                'email' => $this->request->getPost('email'),
                'password' => $this->request->getPost('password'),
                )
            );
    
    if (!$sign_up->save()) {
             echo "Gagal Register";
            }
             else
                     {
                      echo "Register Berhasil";
                     }
}
}