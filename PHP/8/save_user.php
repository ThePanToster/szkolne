<?php
    if(isset($_POST['register'])){
        if(!empty($_POST['user_name']) && !empty($_POST['user_login']) && !empty($_POST['user_password'])){
            $n = htmlentities($_POST['user_name']);
            $l = htmlentities($_POST['user_login']);
            $p = htmlentities($_POST['user_password']);
            $p = hash('sha256', $p);

            require('connect.php');
            // $connection
            $l = mysqli_real_escape_string($connection, $l);
            $n = mysqli_real_escape_string($connection, $n);

            $query = "SELECT user_login, user_password FROM users WHERE user_login='{$l}'";
            $result = mysqli_query($connection, $query);

            if($result){
                if (mysqli_num_rows($result) == 0){
                    $query = "INSERT INTO users values('','$n','$l','$p')";
                    $result = mysqli_query($connection, $query);
                    
                    if($result) header("Location:index.php?status=ok");
                    else header("Location:index.php?status=error");
                }
                else{
                    echo "Konto o takim loginie już istnieje";
                }
            }
            else {
                echo "Błąd połączenia";
            }
        }
        else{
            header("Location:index.php?status=empty");
        }
    }
?>