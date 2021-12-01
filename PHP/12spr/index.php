<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        table, td{
            border: 1px solid black;
            border-collapse: collapse;
            text-align: center;
        }
        td{
            min-width: 100px;
            padding: 0px 10px;
        }
    </style>
</head>
<body>
<ul>
        <li><a href="index.php?nav=dodawanie">DODAWANIE</a></li>
        <li><a href="index.php?nav=filtr">FILTR</a></li>
    </ul>
    <?php
        if(isset($_GET['nav'])){
            switch ($_GET['nav']) {
                case 'filtr':
                    include('filtr.php');
                    break;
                case 'dodawanie':
                    include('dodawanie.php');
                    break;
            }
        }
        if(isset($_POST['dodawanie'])){
            $kurs = $_POST['kurs'];
            if ($_POST['data']==""){
                $data = date("Y-m-d h:i:s");
            }
            else{
                $data = $_POST['data'];
            }
            $pattern = "/^[0-9],[0-9]{4}$/";
            if (preg_match($pattern,$kurs)){
                $kurs = str_replace(",",".",$kurs);
                require('connect.php');

                $query = "INSERT INTO kursy VALUES('',$kurs,'$data')";
                $result = mysqli_query($connection, $query);
                if($result){
                    $query1 = "SELECT id_kurs, kurs FROM kursy";
                    $result1 = mysqli_query($connection, $query1);
                    if($result1){
                    $rowne = 0;
                    $mniejsze = 0;
                    $wieksze = 0;
                    echo "<table>";
                        while ($row = mysqli_fetch_array($result1)){
                            if (floatval($kurs) == floatval($row['kurs'])){
                                $rowne += 1;
                            }
                            elseif ($kurs < $row['kurs']){
                                $wieksze += 1;
                            }
                            else{
                                $mniejsze += 1;
                            }
                            echo "<tr><td>".$row['id_kurs'].".</td><td>".$row['kurs']."</td></tr>";
                        }
                    echo"</table>
                    <p>Wprowadziłeś kurs $kurs. Powtarza się w bazie $rowne razy.<br> Wartości większych jest $wieksze, a wartości mniejszych $mniejsze</p>
                    ";
                    }
                    else{
                        echo "Błąd zapytania";
                    }

                }
                else{
                    echo "Błąd dodawania do bazy";
                }
            }
            else{
                echo "Zły format kursu";
            }
        }
        if(isset($_POST['filtrowanie'])){
            $data_od = $_POST['data_od'];
            $data_do = $_POST['data_do'];
            $sort = $_POST['sortowanie'];

            require('connect.php');

            $query = "SELECT id_kurs, kurs, data FROM kursy WHERE data BETWEEN '$data_od' AND '$data_do' ORDER BY data $sort";
            $result = mysqli_query($connection, $query);
            $suma1 = 0;
            $i1 = 0;
            $suma2 = 0;
            $i2 = 0;
            if($result){
                echo "<table>";
                while ($row = mysqli_fetch_array($result)){
                    $i1 += 1;
                    $suma1 += floatval($row['kurs']);
                    echo "<tr><td>".$row['id_kurs'].".</td><td>".$row['kurs']."</td><td>".$row['data']."</td></tr>";
                }
                echo "</table>";
                $sred = round($suma1/$i1, 2);
                echo "<p>Średnia z filtrowanego wyniku: $sred </p>";
            }
            else{
                echo "Błąd zapytania";
            }
            $query = "SELECT id_kurs, kurs FROM kursy";
            $result = mysqli_query($connection, $query);
            $suma1 = 0;
            $i1 = 0;
            $suma2 = 0;
            $i2 = 0;
            if($result){
                while ($row = mysqli_fetch_array($result)){
                    $i1 += 1;
                    $suma1 += floatval($row['kurs']);
                }
                $sred2 = round($suma1/$i1, 2);
                echo "<p>Średnia ze wszystkich kursów: $sred2 </p>";
            }
            else{
                echo "Błąd zapytania";
            }
            $roznica = $sred - $sred2;
            echo "<p>Różnica: $roznica</p>";
        }
    ?>
</body>
</html>