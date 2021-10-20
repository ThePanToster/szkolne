<?php
    if(isset($_POST['login'])){
        if(!empty($_POST['user_login']) && !empty($_POST['user_password'])){
            $l = htmlentities($_POST['user_login']);
            $p = htmlentities($_POST['user_password']);
            $p = hash('sha256', $p);

            require('connect.php');
            // $connection
            $l = mysqli_real_escape_string($connection, $l);

            $query = "SELECT user_login, user_password FROM users WHERE user_login='{$l}' and user_password='{$p}'";
            $result = mysqli_query($connection, $query);

            if($result){
                if (mysqli_num_rows($result) == 1){
                    echo "Zalogowano!";
                }
                else{
                    echo "Błędne dane";
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