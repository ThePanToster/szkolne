<?php
    if(isset($_POST['registersub'])){
        if(!empty($_POST['user_name']) && !empty($_POST['user_login']) && !empty($_POST['user_password'])){
            $n = htmlentities($_POST['user_name']);
            $l = htmlentities($_POST['user_login']);
            $p = htmlentities($_POST['user_password']);
            $p = hash('sha256', $p);

            require('connect.php');
            // $connection
            $l = mysqli_real_escape_string($connection, $l);
            $n = mysqli_real_escape_string($connection, $n);

            $query = "SELECT `login`, pass FROM users WHERE `login`='{$l}'";
            $result = mysqli_query($connection, $query);

            if($result){
                if (mysqli_num_rows($result) == 0){
                    $d = date("Y-m-d H:i:s");
                    $query = "INSERT INTO users values('','$d','$n','$l','$p',1)";
                    $result = mysqli_query($connection, $query);
                    
                    if($result) header("Location:index.php?status=regok");
                    else header("Location:index.php?status=dberror");
                }
                else{
                    header("Location:index.php?status=regerror");
                }
            }
            else {
                header("Location:index.php?status=dberror");
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