<?php
    if(isset($_POST['article_delete'])){

        require('connect.php');
        // $connection

        $id = $_POST['id_article'];

        $query = "DELETE FROM articles WHERE id_article=$id";
        $result = mysqli_query($connection, $query);

        if($result){
            header("Location:index.php?status=delok");
        }
        else {
            echo "Article removing error";
        }
    }
    else{
        header("Location:index.php");
    }
?>