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
		
<div class="container-fluid" style="margin-top:100px"></div>
    <?= $this->tag->form(['login/loginprocess', 'role' => 'form']) ?>
    <h2>LOGIN</h2> <br> 
    <div class="form-group">
    <label class="control-label col-sm-2" for="username" required>Username:</label>
    <div class="col-sm-10">
    <input type="text" name="username" class="form-control" placeholder="User ID"/>
    </div>
    </div>
    <div class="form-group">
    <label class="control-label col-sm-2" for="password" required>Password:</label>
    <div class="col-sm-10">
    <input type="password" class="form-control" name="password" placeholder="Enter password"/>
    </div>
    </div>
    <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
    <button type="submit" class="btn btn-default">Log In</button>
    </div>
    </div>
    <?= $this->getContent() ?>
    </div>
    </form>
</div>


	</body>
</html>