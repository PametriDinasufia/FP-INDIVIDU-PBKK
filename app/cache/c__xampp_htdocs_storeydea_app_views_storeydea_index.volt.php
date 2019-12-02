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
		
	

<div class="jumbotron">
    <div class="container-fluid">
        <h1>Welcome to STOREYDEA</h1>
        <p>Store your idea right now! </p>
        <p><a href="<?= $this->url->get('signup/index') ?>/" class="btn btn-success btn-lg">Get Started</a></p>
        <p><a href="<?= $this->url->get('login/index') ?>/" class="btn btn-success btn-lg">Log In</a></p>
    </div>
</div>
<div class="container-fluid">
    
    <hr>
    <div class="row">
        <div class="col-xs-12">
            <footer>
                <p>&copy; Pametri Dinasufia (05111540000041) </p>
            </footer>
        </div>
    </div>
</div>

	</body>
</html>