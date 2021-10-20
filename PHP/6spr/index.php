<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <?php
        session_start();
        if (isset($_SESSION['rgb'])){
            $rgb = $_SESSION['rgb'];
            echo '<style>body{ background-color: rgb('.$rgb["r"].','.$rgb["g"].','.$rgb["b"].') }</style>';
        }
    ?>
</head>
<body>
    <a href="index.php?page=formularz">Formularz</a> | 
    <a href="index.php?page=fotka">Fotka</a> | 
    <a href="index.php?page=sumowanie">Sumowanie</a><br>
    <?php
        if( isset($_POST['r']) ){
            $kolorki = array("r" => $_POST['r'], "g" => $_POST['g'], "b" => $_POST['b']);
            $_SESSION['rgb'] = $kolorki;
        }
        if (isset($_POST['liczby'])){
            echo '<form method="post" action="index.php">';
            for($i=0;$i<$_POST['liczby'];$i++){
                echo '<input type="number" name="pole'.$i.'"><br>';
            }
            echo '<input type="submit" value="Sumuj!" name="przycisk3"></form>';
        }
        if (isset($_POST['przycisk3'])){
            $suma=0;
            $i=0;
            while(isset($_POST["pole".$i])){
                $suma += $_POST['pole'.$i];
                $i++;
            }
            echo "Suma jest równa $suma";
        }
        if( isset($_GET['page']) ){
            $page = $_GET['page'];
            switch ($page) {
                case 'formularz':
                    include('formularz.php');
                    break;
                case 'fotka':
                    include('fotka.php');
                    break;
                default:
                    include('sumowanie.php');
                    break;
            }
        }
    ?>
</body>
</html>