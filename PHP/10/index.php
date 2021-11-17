<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
        $name = "ala ma kota";
        // $pattern = "/[a-z]+/";    gdziekolwiek w stringu
        $pattern = "/^[a-zA-Z ]+$/";
        $pattern2 = "/a+$/";
        $pattern_email = "/^[a-z]{5,}+@[a-z]+\.(com|pl)$/";

        /*

        /^ - sprawdzanie od początku
        $/ - sprawdzanie do końca
        +  - co najmniej jedno wystąpienie czegoś po lewej stronie
        (com|pl) - tylko konkretne stringi "com" lub "pl"
        {5,}     - minimum 5 znaków
        
        */

        if (preg_match($pattern,$name)){
            echo "Zgodne!";
        }
        else{
            echo "Niestety nie";
        }
    ?>
</body>
</html>