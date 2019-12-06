{% extends 'template/index.volt' %}

{% block content %}

<style>
    #overlay {
      z-index: 1000;
      display:none;
      position: fixed;
      top: 0px;
      left: 0px;
      width: 100%;
      height: 100%;
      background: rgba(4, 10, 30, 0.8);
    }   

    #tengah{
        width: 250px;
        height: 30px;
        position: absolute;
        top:0;
        bottom: 0;
        left: 0;
        right: 0;
        margin: auto;
    }
    </style>

    <div id="overlay">
            <div id="tengah">
                <center>
                    <br>
                    <span style="color:#ffffff">Please wait ....</span>
                    {{ image("img/loading.gif") }}
                </center>
            </div>
        </div>

        
<div form action="{{url("signup/register")}}" class="container-fluid" style="margin-top:100px" method="POST">
    <div class="row">
        <div class="col-md-4">
        
            <h2>REGISTER</h2>
        <div class="form-group">
                <label>Username</label>
                <input type="username" class="form-control" id="username" placeholder="MASUKKAN USERNAME">
            </div>
            <div class="form-group">
                <label>Email</label>
                <input type="email" class="form-control" id="email" placeholder="MASUKKAN EMAIL">
            </div>
            <div class="form-group">
                <label>Password</label>
                <input type="password" class="form-control" id="password" placeholder="MASUKKAN PASSWORD">
            </div>
                </form>
                <button type="button" onclick="doRegister()" class="btn btn-primary"  id="btnregister">Register</button>
         
                </div>
        
            <!-- <button type="submit"  class="btn btn-primary"  id="btnregister">Register</button> -->
     
        
    </div>
    <hr>
    <div class="row">
        <div class="col-xs-12">
            <footer>
                <p>&copy; Pametri Dinasufia (05111540000041) </p>
            </footer>
        </div>
    </div>
</div>

<script type="text/javascript">
     
    function doRegister(){
        var username=document.getElementById("username");
        var email=document.getElementById("email");
        var password=document.getElementById("password");
        
        
        if($("#btnregister").text()=="Register")
        {
            $.ajax({
                type: "POST", //memanggil fungsi jquery ajax di mana method dari form yang akan kita kirimkan bertipe post dan url StoryController dan InsertDataAction
                url:"{{ url('signup/registerAction') }}",
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
