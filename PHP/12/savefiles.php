<?php
    if(isset($_FILES['filename'])){
        $size = getimagesize($_FILES['filename']['tmp_name']);
        if ($size){
            move_uploaded_file($_FILES['filename']['tmp_name'], "pliki/".$_FILES['filename']['name']);
            header("Location:index.php");
        }
        else{
            echo "To nie obrazek";
        }
    }
    else{
        header("Location:index.php");
    }
?>