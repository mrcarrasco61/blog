<?php
//Veritabanı Bağlantı

header("Content-Type: text/html; charset=utf-8");

//hatalar varsa gözükememesi için error_reporting(0);

setlocale(LC_ALL, 'tr_TR.UTF-8','tr_TR','tr','turkish');

$DBhost = "localhost";
$DBname = "muhammetblog";
$DBuser = "root";
$DBpass = "";


try {
    //connection string
    $db = new PDO("mysql:host=$DBhost;dbname=$DBname",$DBuser,$DBpass);
} catch (PDOException $e) {
    echo 'HATAHATAHATAHATAHATAHATAHATAHATAHATAHATAHATAHATAHATAHATAHATAHATAHATAHATAHATAHATA';
    echo $e->getMessage();
}

$db->exec("SET NAMES 'utf8'; SET CHARSET 'utf8");

define("_URL", "http://localhost:8080/gunluk/blog");

?>