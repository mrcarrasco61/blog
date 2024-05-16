<?php

    require_once 'inc-ayarlar.php';

    $cek = $db->prepare("SELECT * FROM aciklama ORDER BY `id` DESC LIMIT 1 ");
    $cek->execute();
    $row = $cek->fetch(PDO::FETCH_ASSOC);

?>

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
            <div class="col-md-12">
                <h1 class="my-4">Hakkımızda
                </h1>
                <!-- Blog Post -->
                <div class="card mb-4">
                    <img  src="https://i.pinimg.com/originals/60/9b/c5/609bc52c45003d22c5190a1abd0c90c4.jpg" style="width:1109px ;height: 600px ;" alt="Card image cap">
                    <div class="card-body">
                        <div class="container">
                            <h1 class="card-title mt-5" style="text-align: center;">Hakkımızda</h1>
                            <hr>
                            <div class="card-text"> <?= htmlspecialchars_decode($row["aciklama"]);  ?> </div>
                        </div>
                    </div>


                </div>
            </div>


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