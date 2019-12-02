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

<div class="container-fluid" style="margin-top:100px">
    <div class="row">
        <div class="col-md-4">
            
            <h2>Form</h2>
        <div class="form-group">
                <label>Judul Cerita</label>
                <input type="text" class="form-control" id="txtjudul" placeholder="MASUKKAN JUDUL CERITA">
            </div>
            <div class="form-group">
                <label>Info Cerita</label>
                <input type="text" class="form-control" id="txtinfo" placeholder="MASUKKAN INFO CERITA">
            </div>
            <div class="form-group">
                <label>Bab</label>
                <input type="text" class="form-control" id="txtbab" placeholder="MASUKKAN JUDUL BAB">
            </div>
        <button type="button" onclick="doSave()" class="btn btn-primary"  id="btnsimpan">Simpan</button>
         
        </div>
        <div class="col-md-8">
            <h2>Data</h2>
            <button class="btn btn-info" onclick="doLoad()">Lihat Data</button>
            <div id="dv_data">

            </div>
             
        </div>
        
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
     
    function doSave(){
        var txtjudul=document.getElementById("txtjudul");
        var txtinfo=document.getElementById("txtinfo");
        var txtbab=document.getElementById("txtbab");
        
        
        if($("#btnsimpan").text()=="Simpan")
        {
            $.ajax({
                type: "POST", //memanggil fungsi jquery ajax di mana method dari form yang akan kita kirimkan bertipe post dan url StoryController dan InsertDataAction
                url:"{{ url('story/insertData') }}",
                //data yang kita kirim dari form melalui metode post 
                //dimana nantinya controller akan menerima data2 tersebut dan akan mengolahnya.
                    data:"txtjudul="+txtjudul.value+"&txtinfo="+txtinfo.value+"&txtbab="+txtbab.value,
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
