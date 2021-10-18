<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Wyszukiwarka</title>
</head>
<body>
    <?php
        $host = "localhost";
        $user = "root";
        $pass = "";
        $database = "school";

        $connection = @mysqli_connect($host, $user, $pass, $database);
        if(!$connection){
            echo "Brak połączenia!";
            exit();
        }
        if(isset($_POST['nazwisko'])){
            $nazwisko = $_POST['nazwisko'];
            $query = 'SELECT * FROM students WHERE student_lastname LIKE "%'.$nazwisko.'%"';
    
            $result = mysqli_query($connection, $query);
            if($result){
                while( $row = mysqli_fetch_assoc($result) ){
                    echo "Imię: {$row['student_name']} Nazwisko: {$row['student_lastname']} Wiek: {$row['student_age']}<br>";
                }
                echo '<a href="index.php">Powrót<a>';
            }
            else{
                echo "Wystąpił błąd zapytania";
            }
        }
        else if(isset($_POST['imie'])){
            $imie = $_POST['imie'];
            $nazwisko = $_POST['nazw'];
            $wiek = $_POST['wiek'];

            // nie działa :(((
            $result = "INSERT INTO students (student_name, student_lastname, student_age) VALUES ('$imie', '$nazwisko', $wiek)";    //'INSERT INTO students (student_id, student_name, student_lastname, student_age) VALUES (NULL, "'.$imie.'", "'.$nazwisko.'", '.$wiek.')';
            if($result){
                echo "Dodano ziomka poleceniem $result";
            }
            else{
                echo "Wystąpił błąd zapytania";
            }
            echo '<br><a href="index.php">Powrót<a>';
        }
        else{
            echo '<form action="index.php" method="post">
            <h1>Wyszukaj ziomka</h1>
            Wyszukaj nazwisko: <input type="text" name="nazwisko">
            <input type="submit" value="Szukaj!">
            </form><br>';
            echo '<form action="index.php" method="post">
            <h1>Dodaj kolejnego ziomka</h1>
            Imię: <input type="text" name="imie">
            Nazwisko: <input type="text" name="nazw">
            Wiek: <input type="number" name="wiek">
            <input type="submit" value="Dodaj!">
            </form><br>';
        }
    ?>
</body>
</html>