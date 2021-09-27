<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PHP</title>
</head>
<body>
    <?php
        echo '<div style="color: red;">Hello world!</div><br><br>';

        define("JAKASSTALA", "wartość jakiejś stałej");

        $number = 20;
        $number2 = "40";
        $result = $number + $number2;

        echo "Wynik działania to: $result";
        echo "<br>";
        echo 'Wynik działania to: $result';
        echo "<br>";
        echo 'Wynik działania to: '.$result;
        echo "<br>";
        echo 'Stała to: '.JAKASSTALA;
    ?>

    <form name="form1" method="post" action="show.php">
        <input type="text" name="firstname"><br>
        <input type="text" name="lastname"><br>
        <input type="submit" value="Wyświetl dane" name="button1">
    </form>
    <br><br>
    <form name="form2" method="post" action="wynik.php">
        Szerokość: <input type="text" name="szerokosc"><br>
        Wysokość: <input type="text" name="wysokosc"><br>
        Kolor: <input type="color" name="kolor"><br>
        <input type="submit" value="OK" name="wysylanie">
    </form>

</body>
</html>