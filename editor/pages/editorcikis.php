<?php
    session_start();
    $_SESSION["girisKontrol"] = 0;
    unset($_SESSION["kadi"]);
    header("Location: editorindex.php?i=cikis");
    session_destroy();
?>