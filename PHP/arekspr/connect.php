<?php
    $host = "localhost";
    $user = "root";
    $pass = "";
    $database = "spr";

    $connection = @mysqli_connect($host, $user, $pass, $database);
    if(!$connection){
        echo "Database error!";
        exit();
    }
?>