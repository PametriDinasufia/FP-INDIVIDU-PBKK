{% extends 'template/index.volt' %}

{% block content %}
<div class="container-fluid" style="margin-top:100px"></div>
    {{ form('login/loginprocess', 'role': 'form') }}
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
    {{ content() }}
    </div>
    </form>
</div>

{% endblock %}
