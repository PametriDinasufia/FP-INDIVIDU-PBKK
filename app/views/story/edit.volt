{% extends 'template/index.volt' %}

{% block content %}

{{ form('story/update', 'role': 'form') }}
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
            <h2>FORM</h2>
            <!-- <input type="hidden" name="txtid" value=<?php echo $judul ?> -->
            <input type="hidden" id="id" class="form-control" value="{{id}}">
        <div class="form-group">
                <label>Judul Cerita</label>
                <!-- <input type="text" class="form-control" id="txtjudul" placeholder= echo $nama> -->
                <input type="text" id="txtjudul" class="form-control" placeholder=<?php echo $judul ?>
            </div>
            <div class="form-group">
                <br>
                <label>Info Cerita</label>
                <input type="text" class="form-control" id="txtinfo" placeholder=<?php echo $info ?>
            </div>
            <div class="form-group">
                <br>
                <label>Bab</label>
                <input type="text" class="form-control" id="txtbab" placeholder=<?php echo $bab ?>
            </div>
            <div class="form-group">
                <br>
                <form action="index/upload" method="POST" enctype="multipart/form-data">
                <label>File</label>
                <input type="file" class="form-control" name=”files[]” multiple id="uploadfile" >
                <!-- <input type="submit" value="Send File(s)"> -->
                </form>
                </div>

                <!-- <button type="button" class="btn btn-primary"  id="btnupdate">Update</button> -->

                <button type="submit" class="btn btn-primary"  id="btnupdate">Update</button>
    
                <!-- <button type="submit" class="btn btn-default">Update</button> -->
         
        </div>


{% endblock %}
