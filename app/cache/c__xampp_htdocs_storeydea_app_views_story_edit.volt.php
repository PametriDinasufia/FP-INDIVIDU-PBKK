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

  



	</body>
</html>