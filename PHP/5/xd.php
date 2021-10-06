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
        $x = $_POST['n1'];
        $y = $_POST['n2'];
        $tablica = array();
        $tablica[] = array();
        for($i=0;$i<$y;$i++){
            for($j=0;$j<$x;$j++){
                $tablica[$j][$i] = rand(1,100);
            }
        }

    ?>
    <table style="text-align: center">
        <?php
            for($i=0;$i<$y+2;$i++){
                echo "<tr>";
                if($i<$y)
                for($j=0;$j<$x+2;$j++){
                    if($j<$x)
                        echo "<td>{$tablica[$j][$i]}</td>";
                    else if($j==$x){
                        $min=100;
                        for($k=0;$k<$x;$k++){
                            if($tablica[$k][$i]<$min)
                                $min=$tablica[$k][$i];
                        }
                        echo "<th>Min: ",$min,"</th>";
                    }
                    else{
                        $max=0;
                        for($k=0;$k<$x;$k++){
                            if($tablica[$k][$i]>$max)
                                $max=$tablica[$k][$i];
                        }
                        echo "<th>Max: ",$max,"</th>";
                    }
                }
                else if($i==$y)
                    for($j=0;$j<$x+1;$j++)
                        if($j<$x)
                            echo "<th>Min: ",min($tablica[$j]),"</th>";
                        else{
                            // do dodania if x == y to oblicza przekotną
                            if($x==$y){
                                $przek = 0;
                                for ($l=0;$l<count($tablica);$l++)
                                    $przek = $przek + $tablica[$l][$l];
                                echo '<th rowspan="2" colspan="2">Suma przekątnej: ',$przek,'</th>';
                            }
                            else
                                echo '<th rowspan="2" colspan="2">Suma przekątnej: ?</th>';
                        }
                else
                    for($j=0;$j<$x;$j++)
                        echo "<th>Max: ",max($tablica[$j]),"</th>";
                echo "</tr>";
            }
        ?>
    </table>
    <style>
        table, th, td { border: 1px solid black; border-collapse: collapse; }
        td{ background-color: white; color: black; } 
        th{ background-color: black; color: white; font-weight: normal;} 
    </style>
</body>
</html>