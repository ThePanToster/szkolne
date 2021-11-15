<?php
    if(isset($_POST['loginsub'])){
        if(!empty($_POST['user_login']) && !empty($_POST['user_password'])){
            $l = htmlentities($_POST['user_login']);
            $p = htmlentities($_POST['user_password']);
            $p = hash('sha256', $p);

            require('connect.php');
            // $connection
            $l = mysqli_real_escape_string($connection, $l);

            $query = "SELECT * FROM users WHERE `login`='{$l}' and pass='{$p}'";
            $result = mysqli_query($connection, $query);

            if($result){
                if (mysqli_num_rows($result) == 1){
                    session_start();
                    $_SESSION['user']=mysqli_fetch_assoc($result);
                }
                else{
                    header("Location:index.php?status=logerror");
                    exit();
                }
            }
            else {
                header("Location:index.php?status=dberror");
                exit();
            }
        }
    }
    header("Location:index.php");
?>