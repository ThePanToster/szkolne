<?php
    if(isset($_POST['adding'])){
        if(!empty($_POST['text'])){
            $t = htmlentities($_POST['text']);

            require('connect.php');
            // $connection
            $t = mysqli_real_escape_string($connection, $t);
            $d = date("Y-m-d");

            $query = "INSERT INTO tasks values('','$t','$d','$d')";
            $result = mysqli_query($connection, $query);

            if($result){
                header("Location:index.php");
            }
            else {
                echo "Błąd połączenia";
            }
        }
        else{
            header("Location:index.php?status=empty");
        }
    }
    else{
        header("Location:index.php");
    }
?>