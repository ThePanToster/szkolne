<?php
if (isset($_GET['todelete']) ){
    session_start();
    $todelete = $_GET['todelete'];
    $bd=$_SESSION['database123'];
    unset($bd[$todelete]);
    $bd=array_values($bd);
    $_SESSION['database123'] = $bd;
    header ("Location: show.php");
}
?>