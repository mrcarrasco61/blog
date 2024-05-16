<?php
require_once 'editorinc-ayarlar.php';
?>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Blog Ekle</title>

    <!-- Bootstrap Core CSS -->
    <link href="../bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="../bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="../dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="../bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script src="https://cdn.tiny.cloud/1/no-api-key/tinymce/5/tinymce.min.js" referrerpolicy="origin"></script>
    <script>
        tinymce.init({
            selector: 'textarea'
        });
    </script>
</head>

<body>

    <?php

    require_once 'editorinc-menu.php';


    if (@$_POST["submit"]) {

        //$baslik = htmlspecialchars($_POST["baslik"], ENT_QUOTES, 'UTF-8') ;

        $baslik = $_POST["baslik"];
        $alt_baslik = $_POST["alt_baslik"];
        $aciklama = htmlspecialchars($_POST["aciklama"], ENT_QUOTES);
        $aktif = $_POST["aktif"];
        $resim = $_POST["resim"];
        $kategori = $_POST["kategori"];
        $editor = 'editor';

        // echo "Başlık: $baslik";
        $ekle = $db->prepare("INSERT INTO blog (`baslik`, `alt_baslik`, `aciklama`,`resim`, `aktif`,`kategori`,`yazar`)
                    VALUES('$baslik','$alt_baslik','$aciklama','$resim','$aktif','$kategori','$editor')");



        /*
                    $ekle = $db->prepare("INSERT INTO 'blog' (`baslik`, `alt_baslik`, `aciklama`, `aktif`)
                    VALUES(:baslik, :alt_baslik, :aciklama, :aktif)");
                
                    $ekle->bindValue(":baslik",$baslik, PDO::PARAM_STR);
                    $ekle->bindValue(":alt_baslik",$alt_baslik, PDO::PARAM_STR);
                    $ekle->bindValue(":aciklama",$aciklama, PDO::PARAM_STR);
                    $ekle->bindValue(":aktif",$aktif,PDO::PARAM_STR);
                */

        if ($ekle->execute()) {
            // header("Location: blog.php?i=ekle")
            header("Location: editorblog.php?i=eklendi");
        } else {
            print_r($ekle->errorInfo());
            header("Location: editorblog.php?i=hata");
        }
    }

    ?>

    <div id="wrapper">

        <!-- Navigation -->
        <?php include_once 'editorinc-menu.php' ?>

        <div id="page-wrapper">
            <div class="row">
                <div class="container">
                    <h1 class="page-header">Yeni Blog Ekle</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="container">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <a class="btn btn-info" href="blog.php"> Geri Gön </a>
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">
                                    <form role="form" action="" method="POST" enctype="multipart/form-data">
                                        <div class="form-group">
                                            <label>Başlık</label>
                                            <input class="form-control" name="baslik" placeholder="Başlık Giriniz">
                                        </div>
                                        <div class="form-group">
                                            <label>Alt Başlık</label>
                                            <input class="form-control" name="alt_baslik" placeholder="Alt başlık Giriniz">
                                        </div>

                                        <div class="form-group">
                                            <label>Yazı</label>
                                            <textarea class="form-control" name="aciklama" id="mytextarea" rows="3"></textarea>
                                        </div>

                                        <div class="form-group">
                                            <label>Resim Linki</label>
                                            <input class="form-control" type="url" name="resim" placeholder="Resim Linki Giriniz">
                                        </div>

                                        <div class="form-group">
                                            <label>Tür</label>
                                            <div class="radio">
                                                <label>
                                                    <input type="radio" name="kategori" id="optionsRadios1" value="gunluk" checked>Günlük
                                                </label>
                                            </div>
                                            <div class="radio">
                                                <label>
                                                    <input type="radio" name="kategori" id="optionsRadios2" value="diger">Diğer
                                                </label>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label>Durum</label>
                                            <div class="radio">
                                                <label>
                                                    <input type="radio" name="aktif" id="optionsRadios1" value="1" checked>Aktif
                                                </label>
                                            </div>
                                            <div class="radio">
                                                <label>
                                                    <input type="radio" name="aktif" id="optionsRadios2" value="0">Pasif
                                                </label>
                                            </div>
                                        </div>
                                        <input type="submit" name="submit" value="Kaydet" class="btn btn-default">
                                        <button type="reset" class="btn btn-default">Temizle</button>
                                    </form>
                                </div>
                                <!-- /.col-lg-6 (nested) -->

                                <!-- /.col-lg-6 (nested) -->
                            </div>
                            <!-- /.row (nested) -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="../bower_components/jquery/dist/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="../bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="../bower_components/metisMenu/dist/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="../dist/js/sb-admin-2.js"></script>

</body>

</html>