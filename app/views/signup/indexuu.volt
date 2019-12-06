{% extends 'template/index.volt' %}

{% block content %}
<div class="container-fluid" style="margin-top:100px"></div>

<form action="{{url("signup/register")}}" class="form-horizontal" method="POST">
    <div class="form-group">
      <label class="control-label col-sm-2" for="username" required>Username:</label>
      <div class="col-sm-10">
        <input type="username" class="form-control" id="username" placeholder="Enter username">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="email" required>Email:</label>
      <div class="col-sm-10">
        <input type="email" class="form-control" id="email" placeholder="Enter email">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="password" required>Password:</label>
      <div class="col-sm-10">
        <input type="password" class="form-control" id="password" placeholder="Enter password">
      </div>
    </div>
    <div class="form-group">
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-default">Sign Up</button>
      </div>
    </div>
  </form>

</div>



{% endblock %}