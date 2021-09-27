<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ćwiczenie 2</title>
</head>
<body>
    <!-- <form name="f1" action="test.php" method="post">
        Imię: <input type="text" name="imie">
        <input type="submit" value="Pokaż!" name="button1">
    </form> -->
    <form name="f2" action="test.php" method="post">
        Liczba 1: <input type="number" name="l1"><br>
        Liczba 2: <input type="number" name="l2"><br>
        Działanie: <div>
            <input type="radio" name="dzialanie" value="pomnoz">*<br>
            <input type="radio" name="dzialanie" value="podziel">/<br>
            <input type="radio" name="dzialanie" value="dodaj">+<br>
            <input type="radio" name="dzialanie" value="odejmuj">-<br>
        </div>
        <input type="submit" value="Policz" name="button2">
    </form>
</body>
</html>