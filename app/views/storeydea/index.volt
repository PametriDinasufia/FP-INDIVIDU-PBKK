{% extends 'template/index.volt' %}

{% block content %}
	

<div class="jumbotron">
    <div class="container-fluid">
        <h1>Welcome to STOREYDEA</h1>
        <p>Store your idea right now! </p>
        <p><a href="{{ url('signup/index') }}/" class="btn btn-success btn-lg">Get Started</a></p>
        <p><a href="{{ url('login/index') }}/" class="btn btn-success btn-lg">Log In</a></p>
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
{% endblock %}