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
        function myFunction($n1, $n2, $str){
            $sum1 = 0;
            $sum2 = 0;
            $wynik = "";
            for ($i=0; $i<strlen($n1); $i++){
                $sum1 += $n1[$i];
            }
            for ($i=0; $i<strlen($n2); $i++){
                $sum2 += $n2[$i];
            }
            if ($sum1 == $sum2){
                $wynik = "Suma cyfr w liczbach: TAK.";
            }
            else{
                $wynik = "Suma cyfr w liczbach: NIE.";
            }
            if ($str == "PARZYSTOŚĆ"){
                if($n1[-1]%2==0 && $n2[-1]%2==0){
                    $wynik = $wynik." Kontrola parzystości: PARZYSTE";
                }
                else if ($n1[-1]%2==1 && $n2[-1]%2==1){
                    $wynik = $wynik." Kontrola parzystości: NIEPARZYSTE";
                }
                else{
                    $wynik = $wynik." Kontrola parzystości: ZŁOŻONOŚĆ";
                }
            }
            else if ($str == "ZŁOŻONOŚĆ"){
                $test1 = "TAK";
                $test2 = false;
                for ($i=0; $i<strlen($n1); $i++){
                    for ($j=0; $j<strlen($n2); $j++){
                        if ($n2[$j] == $n1[$i]){
                            $test2 = true;
                        }
                    }
                    if (!$test2){
                        $test1 = "NIE";
                    }
                }
                $wynik = $wynik." Czy liczby składają się z tych samych cyfr: ".$test1;
            }
            else{
                $wynik = $wynik." Nie podano trzeciego parametru.";
            }
            return $wynik;
        }

    ?>
</body>
</html>