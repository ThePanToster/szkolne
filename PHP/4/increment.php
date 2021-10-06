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
    if(isset($_POST['num1'])){
        $num1 = $_POST['num1'];
        $num2 = $_POST['num2'];
        $player = $_POST['imie'];
    }
    do{
        $rand1 = rand(1,10);
        $rand2 = rand(1,10);
        $rand3 = rand(1,10);
    }while($rand1==$rand2 || $rand2 ==$rand3 || $rand3 == $rand1);
        
    $points=0;
    if($num1==$rand2 || $num1 ==$rand3 || $num1 == $rand1)
        $points++;
    if($num2==$rand2 || $num2 ==$rand3 || $num2 == $rand1)
        $points++;
    session_start();
    if(!isset($_SESSION['record_points']))
        $_SESSION['record_points']=0;
    if(!isset($_SESSION['record_name']))
        $_SESSION['record_name']="brak";
    if($points>$_SESSION['record_points']){
        $_SESSION['record_points']=$points;
        $_SESSION['record_name']=$player;
    }
    echo "rekordzista: ",$_SESSION['record_name'],"<br> punkty rekordzisty:" , $_SESSION['record_points'];
    ?>
</body>
</html>