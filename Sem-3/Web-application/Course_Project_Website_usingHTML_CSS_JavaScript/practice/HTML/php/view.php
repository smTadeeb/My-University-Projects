<?php
require_once('conn.php');
global $con;

$query = mysqli_query($con, "SELECT * FROM userinfo order by id DESC");


?>
<table class="table table-bordered">
    <tr class="info">
        <th>ID</th>
        <th>Name</th>
        <th>Username</th>
        <th>Password</th>
        <th>Action</th>
    </tr>
    <?php

    while ($row = mysqli_fetch_assoc($query)) {
        echo '
<tr>
<td>' . $row['id'] . '</td>
<td>' . $row['name'] . '</td>
<td>' . $row['username'] . '</td>
<td>' . $row['password'] . '</td>
<td><button id="' . $row['id'] . '" onclick="editData(this.id)" class="edit btn btn-info">Edit</button> <button class="del btn btn-danger"  onclick="deleteData(this.id)" id="' . $row['id'] . '">Delete</button></td>
</tr>';
    }
    echo '</table>';

    ?>
    <script type="text/javascript">
        function deleteData(ids) {

            var id = ids;
            $.ajax({
                url: "delete.php",
                type: "POST",
                data: {
                    id: id
                },
                success: function(data) {
                    $('#records_content').fadeOut(1100).html(data);
                    $.get("view.php", function(data) {
                        $("#table_content").html(data);
                    });
                }
            });
        } // delete close

        function editData(ids) {
            var id = ids;
            $('#show-add').hide();
            $.ajax({
                url: 'edit.php',
                type: 'POST',
                data: {
                    id: id
                },
                success: function(data) {
                    $("#link-add").html(data);
                    $('#link-add').show();
                }
            });
        } // edit close
    </script>