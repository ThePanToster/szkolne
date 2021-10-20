<?php
    if (isset($_SESSION['rgb'])){
        $rgb = $_SESSION['rgb'];
        echo '<style>body{ background-color: rgb('.$rgb["r"].','.$rgb["g"].','.$rgb["b"].') }</style>';
    }
    echo '<img src="kanna.png" alt="błąd" id="obraz"><br>';
    echo '<form method="post" action="fotka.php">
    X: <input type="number" name="x"><br>
    Y: <input type="number" name="y"><br>
    Ukryj obrazek <input type="checkbox" name="ukryj"><br>
    <input type="submit" value="Zmień rozmiar Kanny!" name="przycisk2">
    </form>';
    if( isset($_POST['x']) ){
        $x = $_POST['x'];
        $y = $_POST['y'];
        echo '<style>#obraz{ width: '.$x.'px; height: '.$y.'px; ';
        if ($_POST['ukryj'])
            echo 'visibility: hidden;';
        echo '}</style>';
    }
?>