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
            <label>NIP</label>
            <input type="text" class="form-control" id="txtnip" placeholder="NIP">
        </div>
        <div class="form-group">
            <label>Nama</label>
            <input type="text" class="form-control" id="txtnama" placeholder="NAMA">
        </div>
        <div class="form-group">
            <label>Alamat</label>
            <input type="text" class="form-control" id="txtalamat" placeholder="ALAMAT">
        </div>
        <div class="form-group">
            <label>No Hp</label>
            <input type="text" class="form-control" id="txtnohp" placeholder="NO HP">
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
                <p>&copy; Tutorial Memadukan Template Bootstrap dengan Phalcon </p>
            </footer>
        </div>
    </div>
</div>

<script type="text/javascript">
     
    function doSave(){
        var txtnip=document.getElementById("txtnip");
        var txtnama=document.getElementById("txtnama");
        var txtalamat=document.getElementById("txtalamat");
        var txtnohp=document.getElementById("txtnohp");
        
        if($("#btnsimpan").text()=="Simpan")
        {
            $.ajax({
                type: "POST",
                url:"{{ url('Pegawai/insertData') }}",
                    data:"txtnip="+txtnip.value+"&txtnama="+txtnama.value+"&txtalamat="+txtalamat.value+"&txtnohp="+txtnohp.value,
                beforeSend: function(){
                    document.getElementById("overlay").style.display="inherit";
                },
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
                error:function(){
                    alert("data gagal disimpan")  ;
 document.getElementById("overlay").style.display="none";
  
                }
            });
        }

            
        
    }
 </script>
{% endblock %}
