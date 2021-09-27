<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>php</title>
</head>
<body>
    <a href="index.php?page=offer">Formularz</a> | 
    <a href="index.php?page=contact">Kontakt</a> | 
    <a href="index.php?page=aboutus">O nas</a>

    <?php
        if( isset($_GET['page']) ){
            $page = $_GET['page'];
            switch ($page) {
                case 'offer':
                    include('offer.php');
                    break;
                case 'contact':
                    include('contact.php');
                    break;
                case 'primes':
                    include('primes.php');
                    break;
                default:
                    include('aboutus.php');
                    break;
            }
        }
    ?>
</body>
</html>