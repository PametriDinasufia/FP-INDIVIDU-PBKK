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
        <?php foreach ($data_user as $v) { ?>
          <tr>
            <td><?= $v->username ?></td>
            <td><?= $v->email ?></td>
            <td><a href="user/edit/<?= $v->id ?>">edit</a> </td>
            <td><a href="user/del/<?= $v->id ?>">del</a></td>
          </tr>
        <?php } ?>
        </tbody>
      </table>