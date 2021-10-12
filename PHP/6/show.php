<!DOCTYPE html>
<html lang="pl-PL">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
 <?php
    session_start ();
    $db = $_SESSION['database123'];

    foreach( $db as $index => $oc)
    {
        echo "marka: ", $oc['brand'],"\tmodel: ", $oc['model'],"<a href='delete.php?todelete=$index'>usun</a></br>";
    }

?>
    <form action="index.php" method="post">
    <input type="submit" value="wróć do formularza">
</form>
</body>
</html>