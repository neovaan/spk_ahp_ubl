<?php include 'functions.php'; ?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>LOGIN SPK AHP</title>
  <link href="assets/css/sandstone-bootstrap.min.css" rel="stylesheet" />
  <link href="assets/css/signin.css" rel="stylesheet" />
  <script src="assets/js/jquery.min.js"></script>
  <script src="assets/js/bootstrap.min.js"></script>
</head>

<body style="padding: 0;">
  <nav class="navbar navbar-static-top bg-primary">
    <div class="container">
      <h3 align="center">SPK AHP Penentuan Pegawai Terbaik</h3>
    </div>
  </nav>
  <div class="container">
    <form class="form-signin" action="?act=login" method="post">
      <h2 class="form-signin-heading" align="center" style="color: black;">Silahkan Login</h2>
      <?php if ($_POST) include 'aksi.php'; ?>
      <label for="inputEmail" class="sr-only">Usernames</label>
      <input type="text" id="inputEmail" class="form-control" placeholder="Username" name="user" autofocus />
      <label for="inputPassword" class="sr-only">Password</label>
      <input type="password" id="inputPassword" class="form-control" placeholder="Password" name="pass" />
      <button class="btn btn-primary btn-block" type="submit">Masuk</button>
    </form>
  </div>
      <h3 align="center">Repost By : <a href="https://www.youtube.com/@kaseps8304/videos">Kasep_Code</a></h3>
    </div>
  </nav>
  <script type="text/javascript">
    $('.form-control').attr('autocomplete', 'off');
  </script>
</body>

</html>