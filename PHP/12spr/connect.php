<?php
    $host = "localhost";
    $user = "root";
    $pass = "";
    $database = "sprawdzian";

    $connection = @mysqli_connect($host, $user, $pass, $database);
    if(!$connection){
        echo "Brak połączenia!";
        exit();
    }
?>