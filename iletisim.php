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

    <?php require_once 'inc-ayarlar.php';
    if (@$_POST["submit"]) {
        $email = htmlspecialchars($_POST["email"], ENT_QUOTES, 'UTF-8');
        $mesaj = htmlspecialchars($_POST["message"], ENT_QUOTES, 'UTF-8');

        $ekle = $db->prepare("INSERT INTO iletisim (`email`,`mesaj`) VALUES ('$email','$mesaj') ");

        if ($ekle->execute()) {
            header("Location: iletisim.php?i=basarili");
        } else {
            header("Location: iletisim.php?i=basarili");
        }
    }
    ?>

    <!-- Page Content -->
    <div class="container">
        <div class="row">
            <!-- Blog Entries Column -->
            <h5 >&nbsp;&nbsp;  İletişim</h5>
            <div class="modal-body">
                <form method="POST">
                    <div class="form-group">
                        <label for="exampleInputEmail1">Email</label>
                        <input type="email" class="form-control" name="email" aria-describedby="emailHelp" placeholder="E-mail girin" required>
                    </div>
                    <div class="form-group">
                        <label>Mesaj</label>
                        <textarea class="form-control" name="message" cols="30" rows="10" required></textarea>
                    </div>
                    <!-- <button type="submit" class="btn btn-primary">Gönder</button> -->
                    <input type="submit" class="btn btn-primary" value="Gönder" name="submit">
                </form>
            </div>
        </div>
    </div>
        <?php require 'includes/inc-alt.php'; ?>


        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>