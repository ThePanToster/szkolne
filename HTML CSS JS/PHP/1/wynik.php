<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Wynik</title>
</head>
<body>
    <?php
        $szer = $_POST['szerokosc'];
        $wys = $_POST['wysokosc'];
        $kol = $_POST['kolor'];

        echo '<div style="width: '.$szer.'px; height: '.$wys.'px; background-color: '.$kol.'"></div>';
    ?>
</body>
</html>