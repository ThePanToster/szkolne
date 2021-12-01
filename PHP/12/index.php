<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <form action="savefiles.php" method="post" enctype="multipart/form-data">
        <input type="file" name="filename">
        <input type="submit" value="Wyślij na serwer">
    </form>
    <main>
        <?php
            $images = scandir("pliki");
            foreach($images as $img)
                if ($img != ".." && $img != ".")
                    echo '<img src="pliki/'.$img.'">';
        ?>
    </main>
</body>
</html>