{% extends 'template/index.volt' %}

{% block content %}

<form action="../update" class="form-horizontal" method="POST">
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
                    <div class="form-group">
                        <form action="index/upload" method="POST" enctype="multipart/form-data">
                        <label>File</label>
                        <input type="file" class="form-control" name=”files[]” multiple id="uploadfile">
                        <!-- <input type="submit" value="Send File(s)"> -->
                    </div>
                    <div>
                            <div class="form-group">
                                    <div class="col-sm-offset-2 col-sm-10">
                                     <!-- <button type="button" onclick="doSave()" class="btn btn-primary"  id="btnsimpan">Simpan</button> -->
                                      <button type="submit" class="btn btn-default">Simpan</button>
                    </div>
                        </form>

  </form>

  


{% endblock %}
