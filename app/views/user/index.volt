<table class="table table-hover">
        <thead>
          <tr>
            <th>Username</th>
            <th>Email</th>
            <th>Edit</th>
            <th>Del</th>
          </tr>
        </thead>
        <tbody>
        {% for v in data_user %}
          <tr>
            <td>{{v.username}}</td>
            <td>{{v.email}}</td>
            <td><a href="edit/{{v.id}}">edit</a> </td>
            <td><a href="del/{{v.id}}">del</a></td>
          </tr>
        {% endfor %}
        </tbody>
      </table>