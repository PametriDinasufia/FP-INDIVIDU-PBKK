<html>
	<head>
		<title>STOREYDEA</title>
		<?= $this->tag->stylesheetLink('css/bootstrap.min.css') ?>
		<?= $this->tag->javascriptInclude('js/bootstrap.min.js') ?>
		<?= $this->tag->javascriptInclude('js/jquery.min.js') ?>
	</head>
	<body>
	<nav id="myNavbar" class="navbar navbar-default navbar-inverse navbar-fixed-top" role="navigation">
	    <!-- Brand and toggle get grouped for better mobile display -->
	    <div class="container-fluid">
	        <div class="navbar-header">
	            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbarCollapse">
	                <span class="sr-only">Toggle navigation</span>
	                <span class="icon-bar"></span>
	                <span class="icon-bar"></span>
	                <span class="icon-bar"></span>
	            </button>
	            <a class="navbar-brand" href="<?= $this->url->get('storeydea/index') ?>">STOREYDEA</a>
	        </div>
	        <!-- Collect the nav links, forms, and other content for toggling -->
	        <div class="collapse navbar-collapse" id="navbarCollapse">
	            <ul class="nav navbar-nav">
					<li><a href="<?= $this->url->get('home/index') ?>">Home</a></li>
					<li><a href="<?= $this->url->get('signup/index') ?>">Sign Up</a></li>
	                <li><a href="<?= $this->url->get('story/index') ?>" >Story</a></li>
	                
	            </ul>
	        </div>
	    </div>
	</nav>
		

<?= $this->tag->form(['story/update', 'role' => 'form']) ?>
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
                    <?= $this->tag->image(['img/loading.gif']) ?>
                </center>
            </div>
        </div>

<div class="container-fluid" style="margin-top:100px">
    <div class="row">
        <div class="col-md-4">
            <h2>FORM</h2>
            <!-- <input type="hidden" name="txtid" value=<?php echo $judul ?> -->
            <input type="hidden" id="id" class="form-control" value="<?= $id ?>">
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



	</body>
</html>