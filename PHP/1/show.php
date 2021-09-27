<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>form get</title>
</head>
<body>
    <?php
        $fn = $_POST['firstname'];
        $ln = $_POST['lastname'];

        echo "Witaj $fn $ln na mojej stronie!";
    ?>
</body>
</html>