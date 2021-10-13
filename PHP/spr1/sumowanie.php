<?php
    if (isset($_SESSION['rgb'])){
        $rgb = $_SESSION['rgb'];
        echo '<style>body{ background-color: rgb('.$rgb["r"].','.$rgb["g"].','.$rgb["b"].') }</style>';
    }
    

        //echo("<script type='text/javascript'> var answer = prompt('Ile liczb zsumować?'); </script>");
        //$answer = "<script type='text/javascript'> document.write(answer); </script>";
        

            echo '<form method="post" action="index.php">
            Podaj ilość liczb do zsumowania: 
            <input type="number" name="liczby">
            <input type="submit" value="Zatwierdź!" name="przycisk4">
            </form>';
        
    
?>