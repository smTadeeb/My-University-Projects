<!DOCTYPE html>
<html>

<head>
  <title>Avantika</title>
  <link type="text/css" rel="stylesheet" href="LINK_TO/bootstrap.min.css" />
  <link type="text/css" rel="stylesheet" href="LINK_TO/bootstrap-themes.css" />
</head>

<body>
  <div class="container-fluid" style="padding: 0px; margin: 0px;">
    <div class="jumbotron">
      <h1 class="text-center">Ajax</h1>
    </div>
  </div>
  <div class="container" style="padding-top: 25px;">
    <div class="row">
      <div class="col-md-12">
        <div class="pull-right">
          <button class="btn btn-success" id="show-add">Add New Record</button>
        </div>
        <div id="link-add" class="form-inline">
          <div class="form-group col-md-3">
            <input type="text" name="name" id="name" placeholder="Name" class="form-control" required />
          </div>
          <div class="form-group col-md-3">
            <input type="text" name="username" id="username" placeholder="Username" class="form-control" required />
          </div>
          <div class="form-group col-md-3">
            <input type="text" id="password" name="password" placeholder="Password" class="form-control" required />
          </div>
          <div class="form-group col-md-3">
            <button type="button" class="btn btn-primary" id="add" name="add">Add Record</button>
            <button type="button" href="javascript:void(0);" class="btn btn-default" id="cancel" name="add" onclick="$('#link-add').slideUp(2);$('#show-add').show();">Cancel</button>
          </div>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-md-12">
        <div id="records_content"></div>
        <br>
        <div class="col-md-offset-1 col-md-10" id="table_content">
        </div>
      </div>
    </div>
  </div>
  <!-- <script src="js/jquery-2.2.0.min.js"></script> -->
  <script src="https://code.jquery.com/jquery-2.2.0.min.js" integrity="sha256-ihAoc6M/JPfrIiIeayPE9xjin4UWjsx2mjW/rtmxLM4=" crossorigin="anonymous"></script>
  <script src="LINK_TO/bootstrap.min.js"></script>
  <!-- <script type="text/javascript" src="app.js"></script> -->
  <script type="text/javascript">
    $(document).ready(function() {

      $.get("view.php", function(data) {
        $("#table_content").html(data);
      });

      $('#link-add').hide();

      $('#show-add').click(function() {
        $('#link-add').slideDown();
        $('#show-add').hide();
      });

      $('#add').click(function() {
        var name = $('#name').val();
        var username = $('#username').val();
        var password = $('#password').val();

        $.ajax({
          url: "add.php",
          type: "POST",
          data: {
            name: name,
            username: username,
            password: password
          },
          success: function(data) {
            $('#name').val('');
            $('#username').val('');
            $('#password').val('');
            $.get("view.php", function(html) {
              $("#table_content").html(html);
            });
            $('#records_content').fadeOut().html(data);
          },
          error: function() {
            $('#records_content').fadeIn().html('<div class="text-center">error here</div>');
          },
          beforeSend: function() {
            $('#records_content').fadeOut().html('<div class="text-center">Loading...</div>');
          },
          complete: function() {
            $('#link-add').hide();
            $('#show-add').show();
          }
        });
      });
    });
  </script>
</body>

</html>