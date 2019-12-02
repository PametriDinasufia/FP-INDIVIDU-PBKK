{% extends 'template/index.volt' %}

{% block content %}
<div class="container-fluid" style="margin-top:100px"></div>
<form action="{{url("signup/register")}}" class="form-horizontal" method="POST">
    <h2>SIGN UP</h2> <br>
    <div class="form-group">
    <label class="control-label col-sm-2" for="username" required>Username:</label>
    <div class="col-sm-10">
    <input type="username" class="form-control" id="username" placeholder="Enter username">
    </div>
    </div>
    <div class="form-group">
    <label class="control-label col-sm-2" for="email" required>Email:</label>
    <div class="col-sm-10">
    <input type="email" class="form-control" id="email" placeholder="Enter email">
    </div>
    </div>
    <div class="form-group">
    <label class="control-label col-sm-2" for="password" required>Password:</label>
    <div class="col-sm-10">
    <input type="password" class="form-control" id="password" placeholder="Enter password">
    </div>
    </div>
    <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
    <button type="submit" onclick="doRegister()" class="btn btn-default" id="btnregister">Sign Up</button>
    
    </div>
    </div>
    </form>
</div>

<script type="text/javascript">
     
    function doRegister(){
        var username=document.getElementById("username");
        var email=document.getElementById("email");
        var password=document.getElementById("password");
        
        
        if($("#btnregister").text()=="Sign Up")
        {
            $.ajax({
                type: "POST", //memanggil fungsi jquery ajax di mana method dari form yang akan kita kirimkan bertipe post dan url StoryController dan InsertDataAction
                url:"{{ url('signup/insertData') }}",
                //data yang kita kirim dari form melalui metode post 
                //dimana nantinya controller akan menerima data2 tersebut dan akan mengolahnya.
                    data:"username="+username.value+"&email="+email.value+"&password="+password.value,
                // hal yang dilakukan sebelum proses dikirim, yaitu proses loading data
                beforeSend: function(){
                    document.getElementById("overlay").style.display="inherit";
                },

                //hal yang dilakukan saat proses berhasil dilakukan disini hal yang dilakukan 
                //adalah menghilangkan kembali tampilan loading dan proses pengecekan 
                //dari variable response 1 artinya berhasil dan selain satu adalah gagal.
                success: function (response) {
                    document.getElementById("overlay").style.display="none";
                    if(response==1)
                    {
                        alert("data berhasil disimpan")

                    }
                    else
                    {
                        alert("data gagal disimpan")   
                    }
                },
                //jika saat proses pengeriman ke server terjadi masalah 
                //entah itu lost koneksi atau masalah jaringan 
                //maka hal yang dilakukan adalah menampilkan pesan peringatan dan menghilangkan loading.
                error:function(){
                    alert("data gagal disimpan")  ;
 document.getElementById("overlay").style.display="none";
  
                }
            });
        }

            
        
    }
 </script>

{% endblock %}