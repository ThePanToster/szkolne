<h1 style="background-color: green">PRZYCHODNIA</h1>
<form action="pacjenci.php" method="post">
    Imie: <input type="text" name="imie"><br>
    Nazwisko: <input type="text" name="nazwisko"><br>
    Data urodzenia: <input type="date" name="data_ur"><br>
    Link do zdjęcia: <input type="url" name="zdjecie"><br>
    <input type="submit" value="Wyślij" name="rejestracja">
</form>

<?php
    if(isset($_POST['rejestracja'])){
        require('connect.php');

        $i = $_POST['imie'];
        $n = $_POST['nazwisko'];
        $d_ur = $_POST['data_ur'];
        $d_rej = date("Y-m-d");
        $z = $_POST['zdjecie'];

        if ($d_ur > $d_rej){
            echo "Zła data urodzenia";
        }
        else{
            $query = "INSERT INTO Pacjenci values('','$i','$n','$d_ur','$d_rej','$z')";
            $result = mysqli_query($connection, $query);
    
            if($result){
                echo "Dodano pacjenta<br>";
                echo "
                    <a href=\"$z\" style=\"display:block; width: 100px; height:80px; background-image: url('$z'); background-size: cover;\"></a>
                ";
            }
            else{
                echo "Wystąpił problem z dodaniem pacjenta";
            }
        }
    }
?>
