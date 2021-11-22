<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form action="index.php" method="post">
        <input type="text" name="text">
        <input type="submit" value="Sprawdź!" name="send">
    </form>
    <?php
        function add($a = 10, $b = 10){
            echo "Działam!";
            return $a + $b;
        }

        function dane_z_peselu($pesel){
            if (!is_numeric($pesel)){
                echo "Pesel musi być liczbą!";
            }
            elseif (strlen($pesel)!=11){
                echo "Pesel musi mieć długość 11!";
            }
            else{
                $rok = 19+floor(substr($pesel,2,2)/20).substr($pesel,0,2);
                $mies = substr($pesel,2,2)%20;
                $dzien = substr($pesel,4,2);
                if (substr($pesel,-2,1)%2==0){
                    $plec= "kobietą";
                }
                else{
                    $plec= "mężczyzną";
                }
                echo "Jesteś $plec ur. $dzien-$mies-$rok";
            }
        }

        function cezary($string, $key){
            for($i=0;$i<strlen($string);$i++){
                $znak = substr($string,$i,1);
                $ascii = ord($znak);
                $ascii += $key;
                $ascii = ($ascii - 97)%25 + 97;
                echo chr($ascii);
            }
        }

        if(isset($_POST['send'])){
            dane_z_peselu($_POST['text']);
        }

        echo "<br>";

        $names = array();
        $names[] = "kowalski";
        $names[] = "nowak";
        $names[] = "piotrowski";
        $key = 20;

        for($i=0;$i<count($names);$i++){
            echo "$names[$i]: ";
            cezary($names[$i],$key);
            echo '<br>';
        }

        // echo add(50);

        // //------------------------------------------------

        // $text = "Ala ma kota";
        // $cut = substr($text,7,4);

        // echo strlen($text);  // dlugosc łańcucha znaków
        // echo strtoupper($text);
        // echo $cut;
    ?>
</body>
</html>