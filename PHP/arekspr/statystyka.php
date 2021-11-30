<?php
    require('connect.php');
    $query = "SELECT imie, nazwisko, data_ur FROM Pacjenci ORDER BY data_ur DESC";
    $result = mysqli_query($connection, $query);
    if ($result){
        echo "<table><tr><th>Nr</th><th>Nazwisko i imię</th><th>Wiek</th></tr>";
        $i = 1;
        while ($row = mysqli_fetch_array($result)){
            $data_ur = strtotime($row['data_ur']);
            $wiek = floor((time()-$data_ur)/(3600*24*365.25));
            echo "<tr><td>".$i.".</td><td>".$row['nazwisko']." ".$row['imie']."</td><td>$wiek</td></tr>";
            $i += 1;
        }
        echo "</table>";
    }
    else{
        echo "Błąd w wyświetlaniu pacjentów";
    }
?>