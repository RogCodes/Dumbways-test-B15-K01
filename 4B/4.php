<?php
// Koneksi ke Database
$db = mysqli_connect("localhost", "root", "", "webdb");

$ambil = mysqli_query($db, "SELECT * FROM profile_tb");

$data = mysqli_fetch_array($ambil);

?>

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <title>Nomor 4</title>
  </head>
  <body>
    
  <div class="container">
  <nav class="navbar navbar-expand-lg navbar-light bg-light">
      <a class="navbar-brand" href="#">Navbar</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item active">
            <a class="nav-link" href="#">Add Profile</a>
          </li>

          <li class="nav-item active">
            <a class="nav-link" href="#">Add Hobby</a>
          </li>
        </ul>
      </div>
    </nav>
  </div>

  <div class="container">
    <div class="row">
      <?php while( $row = mysqli_fetch_assoc($ambil) ) : ?>
          <div class="col-lg-3">
            <div class="card">
              <img class="img" src="img/<?= $row["photo"]; ?>" class="card-img-top" alt="...">
              <div class="card-body">
                <h5 class="card-title"><?=  $row["nama"]; ?></h5>
                <p class="card-text"><?=  $row["hobby_id"]; ?></p>
                <a href="#" class="btn btn-primary">Detail</a>
              </div>
            </div>
          </div>
      <?php endwhile; ?>
    </div>
  </div>

</body>
</html>