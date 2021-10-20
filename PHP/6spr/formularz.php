<?php
    if (isset($_SESSION['rgb'])){
        $rgb = $_SESSION['rgb'];
        echo '<style>body{ background-color: rgb('.$rgb["r"].','.$rgb["g"].','.$rgb["b"].') }</style>';
    }
    echo '<form method="post" action="index.php">
    R: <input type="number" name="r"><br>
    G: <input type="number" name="g"><br>
    B: <input type="number" name="b"><br>
    <input type="submit" value="Zmień kolor!" name="przycisk">
    </form>';
?>