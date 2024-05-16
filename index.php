<?php require_once 'inc-ayarlar.php'; ?>

<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Blog By Mr. Carrasco</title>

  <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css/blog-home.css" rel="stylesheet">

</head>

<body>

  <!-- Navigation -->
  <?php require 'includes/inc-menu.php'; ?>

  <!-- Page Content -->
  <div class="container">

    <div class="row">

      <!-- Blog Entries Column -->
      <div class="col-md-8">

        <h1 class="my-4">Bloglar
          <small>Blog Listesi</small>
        </h1>

        <!-- Blog Post -->

        <?php
          $cek=null;

        if ((@$arananKategori = $_GET["kategori"]) or (@$kelime = $_GET["aranankelime"]) ) {
          if ((@$arananKategori = $_GET["kategori"]) and $arananKategori != "") {
            echo "<p>Aranan kategori: $arananKategori | <a href='index.php'>Anasafaya Geri Dön</a> </p>";
            $cek = $db->prepare("SELECT * FROM blog where aktif=1 && `kategori` LIKE :aranankategori ORDER BY `id` DESC ");
            $cek->bindValue("aranankategori", "%$arananKategori%", PDO::PARAM_STR);
  
            $cek->execute();
            while ($row = $cek->fetch(PDO::FETCH_ASSOC)) {
          ?>
              <div class="card mb-4">
                <img class="card-img-top" src="<?= $row["resim"]; ?>" alt="Card image cap">
                <div class="card-body">
                  <h2 class="card-title"> <?= $row["baslik"]; ?> </h2>
                  <p class="card-text"> <?= $row["alt_baslik"]; ?> </p>
                  <a href="blog-detay.php?id=<?= $row["id"]; ?>" class="btn btn-primary">Daha Fazlası &rarr;</a>
                </div>
                <div class="card-footer text-muted">
                  <?= $row["tarih"]; ?> by Mr. Carrasco
                </div>
              </div>
            <?php
            }
          } else {
            $cek = $db->prepare("SELECT * FROM blog where aktif=1 ORDER by id desc ");
          }
          
          if ((@$kelime = $_GET["aranankelime"]) and isset($kelime)) {
            echo "<p>Aranan kelime: $kelime | <a href='index.php'>Anasafaya Geri Dön</a> </p>";
            $cek = $db->prepare("SELECT * FROM blog where aktif=1 && `baslik` LIKE :aranan ORDER BY `id` DESC ");
            $cek->bindValue("aranan", "%$kelime%", PDO::PARAM_STR);
            $cek->execute();
          } else {
            $cek = $db->prepare("SELECT * FROM blog where aktif=1 ORDER by id desc ");
          }
          while ($row = $cek->fetch(PDO::FETCH_ASSOC)) {
            ?>
            <div class="card mb-4">
              <img class="card-img-top" src="<?= $row["resim"]; ?>" alt="Card image cap">
              <div class="card-body">
                <h2 class="card-title"> <?= $row["baslik"]; ?> </h2>
                <p class="card-text"> <?= $row["alt_baslik"]; ?> </p>
                <a href="blog-detay.php?id=<?= $row["id"]; ?>" class="btn btn-primary">Daha Fazlası &rarr;</a>
              </div>
              <div class="card-footer text-muted">
                <?= $row["tarih"]; ?> by Mr. Carrasco
              </div>
            </div>
          <?php
          }

        }
        else {
          $cek = $db->prepare("SELECT * FROM blog where aktif=1 ORDER by id desc ");
          $cek->execute();
        while ($row = $cek->fetch(PDO::FETCH_ASSOC)) {
          ?>
          <div class="card mb-4">
            <img class="card-img-top" src="<?= $row["resim"]; ?>" alt="Card image cap">
            <div class="card-body">
              <h2 class="card-title"> <?= $row["baslik"]; ?> </h2>
              <p class="card-text"> <?= $row["alt_baslik"]; ?> </p>
              <a href="blog-detay.php?id=<?= $row["id"]; ?>" class="btn btn-primary">Daha Fazlası &rarr;</a>
            </div>
            <div class="card-footer text-muted">
              <?= $row["tarih"]; ?> by Mr. Carrasco
            </div>
          </div>
        <?php
        }
        
        }
        ?>
        
      </div>
      <!-- Sidebar Widgets Column -->
      <?php require 'inc-yan.php'; ?>

    </div>
    <!-- /.row -->

  </div>
  <!-- /.container -->

  <!-- Footer -->
  <?php require 'includes/inc-alt.php'; ?>

  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>