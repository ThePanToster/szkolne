<?php
    if(isset($_POST['article_edit'])){
        if(!empty($_POST['text'])){
            $txt = htmlentities($_POST['text']);
            $title = htmlentities($_POST['title']);

            require('connect.php');
            // $connection
            $txt = mysqli_real_escape_string($connection, $txt);
            $title = mysqli_real_escape_string($connection, $title);
            $d = date("Y-m-d H:i:s");
            $id = $_POST['id_article'];

            $query = "UPDATE articles SET date='$d', title='$title', content='$txt' WHERE id_article=$id";
            $result = mysqli_query($connection, $query);

            if($result){
                header("Location:index.php?status=editok");
            }
            else {
                echo "Article editing error";
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