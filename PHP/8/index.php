<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Zadanie 8</title>
</head>
<body>
    <form action="save_user.php" method="post">
        Imię: <input type="text" name="user_name"><br>
        Login: <input type="text" name="user_login"><br>
        Hasło: <input type="password" name="user_password"><br>
        <input type="submit" name="register" value="Zarejestruj!">
    </form><br><br><br><br><br>
    <form action="login.php" method="post">
        Login: <input type="text" name="user_login"><br>
        Hasło: <input type="password" name="user_password"><br>
        <input type="submit" name="login" value="Zaloguj!">
    </form><br>
    <?php
        if(isset($_GET['status'])){
            switch ($_GET['status']) {
                case 'ok':
                    echo "Dodano użytkownika!";
                    break;
                case 'error':
                    echo "Wystąpił błąd";
                    break;
                case 'empty':
                    echo "Nie wypełniono wszystkich pól";
                    break;
            }
        }
    ?>
</body>
</html>