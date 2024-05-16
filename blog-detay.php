<?php require_once 'inc-ayarlar.php'; ?>

<?php
  @$id = intval($_GET["id"]);
  $cek = $db->prepare("SELECT * FROM `blog` where `id` = :id LIMIT 1");
  $cek->bindValue("id",$id,PDO::PARAM_INT);
  $cek->execute();
  $row = $cek->fetch(PDO::FETCH_ASSOC);

  if ($row["aktif"] == 0) {
    header("Location: index.php");
  }

?>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title><?= $row["baslik"] ?></title>

  <!-- Bootstrap core CSS -->
  <link href="./vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="./css/blog-post.css" rel="stylesheet">

</head>

<body>

  <!-- Navigation -->
  <?php require 'includes/inc-menu.php'; ?>

  <!-- Page Content -->
  <div class="container">


    <div class="row">
      <!-- Post Content Column -->
      <div class="col-lg-8">
        <!-- Title -->
        <h1 class="mt-4"><?= $row["baslik"] ?></h1>
        <!-- Author -->
        <p class="lead">
          by
          <a href="#">Mr. Carrasco</a>
        </p>
        <hr>
        <!-- Date/Time -->
        <p><bold>Yazıldığı Tarih:</bold> <?= $row["tarih"] ?></p>
        <hr>
        <!-- Preview Image -->
        <img class="img-fluid rounded" src="<?= $row["resim"]?>" alt="">
        <hr>
        <!-- Post Content -->

        <?= htmlspecialchars_decode($row["aciklama"]); ?>

        <hr>
        <div class="card my-4">

        <?php

          if(@$_POST["yorumsubmit"]) {

          @$blogid = intval($_GET["id"]);
          $isim = $_POST["isim"];
          $email = $_POST["email"];
          $yorum = $_POST["yorum"];
          $onay = 0;

          $yorumekle=$db->prepare("INSERT INTO yorumlar (`isim`,`email`,`yorum`,`icerik_id`,`onay`)
                                    VALUES('$isim','$email','$yorum','$blogid','$onay')");
                    if ($yorumekle->execute()) {
                      ?>
                        <script>alert("Yorumunuz eklendi onaylandıktan sonra yayınlanacaktır")</script>
                      <?php
                        header("Refresh:0");
                    }

                    else{
                      ?>
                      <script>alert("HATA")</script>
                    <?php
                      header("Refresh:0");
                    }
        }

        
        ?>
          <h5 class="card-header">Yorum Yaz:</h5>
          <div class="card-body">
            <form role="form" method="POST" enctype="multipart/form-data">
              <div class="form-group">
                <label>İsim</label>
                <input type="text" class="form-control" name="isim">
              </div>
              <div class="form-group">
                <label>E-Mail</label>
                <input type="mail" class="form-control" name="email">
              </div>
              <div class="form-group">
                <label>Yorum</label>
                <textarea class="form-control" rows="5" name="yorum"></textarea>
              </div>
              <input type="submit" name="yorumsubmit" class="btn btn-primary" value="Yorumu Gönder"></input>
            </form>
          </div>
        </div>

        <?php
        
          $yorumcek = $db->prepare("SELECT * FROM `blog` left join `yorumlar` on `yorumlar`.`icerik_id` = `blog`.`id`  where `blog`.`id`= :id and `yorumlar`.`onay` =1");
          $yorumcek->bindValue("id",$id,PDO::PARAM_INT);
          $yorumcek->execute();
          while ($yorumrow = $yorumcek->fetch(PDO::FETCH_ASSOC)) {
            ?>
<div class="media mb-4">
          <img class="d-flex mr-3 rounded-circle" src="http://placehold.it/50x50" alt="">
          <div class="media-body">
            <h5 class="mt-0"><?= $yorumrow["isim"] ?></h5>
            <?= $yorumrow["yorum"] ?>
          </div>
        </div>

            <?php
          }
        ?>

        <!-- Single Comment -->
        


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
  <script src="./vendor/jquery/jquery.min.js"></script>
  <script src="./vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>
