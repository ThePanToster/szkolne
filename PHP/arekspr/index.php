<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <ul>
        <li><a href="index.php?nav=pacjenci">Pacjenci</a></li>
        <li><a href="index.php?nav=statystyka">Statystyka</a></li>
        <li><a href="index.php?nav=wyszukiwarka">Wyszukiwarka</a></li>
    </ul>
    <?php
        if(isset($_GET['nav'])){
            switch ($_GET['nav']) {
                case 'pacjenci':
                    require('pacjenci.php');
                    break;
                case 'statystyka':
                    require('statystyka.php');
                    break;
                case 'wyszukiwarka':
                    require('wyszukiwarka.php');
                    break;
            }
        }
    ?>
</body>
</html>