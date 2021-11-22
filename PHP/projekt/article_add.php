<?php
    if(isset($_POST['article_add'])){
        if(!empty($_POST['text'])){
            $txt = htmlentities($_POST['text']);
            $title = htmlentities($_POST['title']);

            session_start();
            $u = $_SESSION['user']['id_user'];

            require('connect.php');
            // $connection
            $txt = mysqli_real_escape_string($connection, $txt);
            $title = mysqli_real_escape_string($connection, $title);
            $d = date("Y-m-d H:i:s");

            $query = "INSERT INTO articles values('','$d',0,'$title','$txt',$u)";
            $result = mysqli_query($connection, $query);

            if($result){
                header("Location:index.php");
            }
            else {
                echo "Article creating error";
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