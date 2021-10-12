<!DOCTYPE html>
<html lang="pl-PL">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
    session_start();
    $cars = array(); // $cars[0]
    $people = array("name"=> "Jan", "lname"=> "kowalski"); // $ people["lname"] =>>> kowalski
    $cars[]= array("brand"=> "Ford", "model"=>"Fiesta");
    $cars[]= array("brand"=> "Dodge", "model"=>"Demon");
    $cars[]= array("brand"=> "Subaru", "model"=>"Impreza");
    //$_SESSION['database123'] = $cars;
    //for($i=0;$i<count($cars);$i++)
       // {
      //      echo "marka: ", $cars[$i]["brand"] ," "marka: ", $cars[$i]["model"],"<br>";
       // }
      //  for($i=0;$i<count($_SESSION['database123']);$i++)
     //   {
      //      echo "marka: ", $_SESSION['database123'][$i]["brand"] ," model:", $_SESSION['database123'][$i]["model"],"<br>";
      //  }

    if (!isset($_SESSION['database123'])){
        $_SESSION['database123'] = $cars;
    }
    ?>
    <form action="dodawanie.php" method="post">
        <input type="text" name="dodajmar">
        <input type="text" name="dodajmod">
        <input type="submit" value="dodaj">
    </form>
</body>
</html>