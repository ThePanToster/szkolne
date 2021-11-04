<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>TO DO</title>
</head>
<body>
    <div class="tasks">
        <?php
            require('connect.php');

            $query = "SELECT * FROM tasks";
            $result = mysqli_query($connection, $query);

            if($result){
                while ($row = mysqli_fetch_array($result)){ 
                    
                    echo '<div class="task">'.$row['text'].'</div>';
                }
            }
            else {
                echo "Błąd połączenia";

            }
        ?>
        <div class="task">
            <?php
                if(isset($_GET['status'])){
                    if ($_GET['status'] == 'add') {
                        echo '<form action="add_task.php" method="post">
                                <textarea name="text" cols="30" rows="10"></textarea>
                                <button type="submit" name="adding">Dodaj!</button>
                              </form>';
                    }
                    else if ($_GET['status'] == 'empty'){
                        echo '<form action="add_task.php" method="post">
                                <textarea name="text" cols="30" rows="10"></textarea>
                                <button type="submit" name="adding">Dodaj!</button>
                              </form><span>Nie wpisano notatki!</span>';
                    }
                }
                else{
                    echo '<a href="index.php?status=add">+</a>';
                }
            ?>
        </div>
    </div>
</body>
</html>