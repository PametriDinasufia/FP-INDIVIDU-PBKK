{% extends 'template/index.volt' %}

{% block content %}
<div class="jumbotron">
      <div class="container-fluid">
          <h1>Welcome to STOREYDEA</h1>
          <p>Store your story idea right now! </p>
          <?php
          if ($this->session->has("auth")) {
          $auth = $this->session->get("auth");
          $username=$auth['username'];
          echo "Selamat datang, $username!";
          ?>
          <a href="{{ url('login/logout') }}">(Logout)</a>
          <?php
          }
        ?>
         </br>
         </br>
        <p><a href="{{ url('story/index') }}/" class="btn btn-success btn-lg">Store your story idea</a></p>
       
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