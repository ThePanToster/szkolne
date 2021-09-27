<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>test.php</title>
</head>
<body style="font-family: Verdana">
    <?php

        // if(isset($_POST['button1'])){
        //     $fn = $_POST['imie'];
        //     echo $fn;
        // }
        // else{
        //     echo "Wystąpił błąd!";
        // }
        if(isset($_POST['button2'])){
            if($_POST['l1'] == "")
                $l1 = 0;
            else
                $l1 = $_POST['l1'];
            if($_POST['l2'] == "")
                $l2 = 0;
            else
                $l2 = $_POST['l2'];
            if(isset($_POST['dzialanie']))
                $dzialanie = $_POST['dzialanie'];
            else
                $dzialanie = 'dodaj';
            echo "Wynik: ";
            switch ($dzialanie) {
                case 'pomnoz':
                    echo $l1*$l2;
                    break;
                case 'podziel':
                    if($l2!=0)
                        echo $l1/$l2;
                    else
                        echo "Nie można dzielić przez zero!";
                    break;
                case 'odejmuj':
                    echo $l1-$l2;
                    break;
                default:
                    echo $l1+$l2;
                    break;
            }
        }
        else
            header("Location: index.php");
        
    ?><br><br>
    <div style="display: inline-block">
        <?php
            for($i=0; $i<20; $i++){
                echo "$i <br>";
            }
        ?>
    </div>
    <div style="display: inline-block">
        <?php
            $i = 0;
            while($i<20){
                echo "$i <br>";
                $i++;
            }
        ?>
    </div>
    <div style="display: inline-block">
        <?php
            $i = 0;
            do{
                echo "$i <br>";
                $i++;
            }while($i<20);
        ?>
    </div>
    <div style="display: inline-block; margin: 0px 40px;">
        <?php
            for($i=0;$i<13;$i++){
                for($j=0;$j<$i+1;$j++)
                    echo "*";
                echo "<br>";
            }
        ?>
    </div>
    <div style="display: inline-block; margin: 0px 40px;">
        <?php
            for($i=16;$i>0;$i--){
                for($j=$i;$j>1;$j--)
                    echo "&nbsp;";
                echo "**************************************************<br>";
            }
        ?>
    </div>
    <div style="display: inline-block; margin: 0px 40px;">
        <?php
            for($i=0;$i<16;$i++){
                for($j=$i+1;$j<16;$j++)
                    echo "&nbsp;&nbsp;";
                for($k=1;$k<($i+1)*2;$k++)
                    echo "*";
                echo "<br>";
            }
        ?>
    </div><br>
    <h1>Tabliczka mnożenia</h1>
    <table style="text-align: center">
        <?php
            for($i=0;$i<=10;$i++){
                echo "<tr>";
                for($j=0;$j<=10;$j++){
                    if($j==0 && $i==0)
                        echo "<th></th>";
                    else if($j!=0 && $i==0)
                        echo "<th>".$j."</th>";
                    else if($j==0 && $i!=0)
                        echo "<th>".$i."</th>";
                    else
                        echo "<td>".$j*$i."</td>";
                }
                echo "</tr>";
            }
        ?>
    </table>
    <style>
        table, th, td { border: 1px solid black; border-collapse: collapse; }
        th{ background-color: black; color: white; font-weight: normal;} 
        td{ background-color: white; color: black; } 
    </style>
</body>
</html>