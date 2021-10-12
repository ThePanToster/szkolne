<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
        if(isset($_POST['dodajmar'])){
            $nmark = $_POST['dodajmar'];
            $nmod = $_POST['dodajmod'];
            session_start();
            $cars = $_SESSION['database123'];
            $cars[] = array("brand"=> $nmark, "model"=>$nmod);
            $_SESSION['database123'] = $cars;
        }
        // for($i=0;$i<count($cars);$i++){
        //    echo "marka: ",$cars[$i]["brand"] ," model:",$cars[$i]["model"],"<br>";
        // }
    
        header("Location: show.php")
    ?>
</body>
</html>