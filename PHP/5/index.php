<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>5</title>
</head>
<body>
    <form action="xd.php" method="post">
        x: <input type="number" name="n1">
        y: <input type="number" name="n2">
        <input type="submit" value="Generuj">
    </form>
    <?php
        // // $cars = array();
        // $cars = array("Fiat", "Ford", "Peugeot");
        // $cars[] = "Citroen";

        // for($i=0; $i<count($cars); $i++)
        //     echo "{$cars[$i]} <br>";

        // foreach($cars as $one_car)
        //     echo "$one_car ";

        // echo "<br><br>";
        // // ----------------------------------------------

        // $students = array();
        // $students[] = array("Jan", "Kowalski", "klasa 3");
        // $students[] = array("Adam", "Nowak", "klasa 1");
        // $students[] = array("Piotr", "Żak", "klasa 2");
        // $students[] = array("Adam", "Mickiewicz", "klasa 2");

        // for($i=0; $i<count($students); $i++){
        //     // sposób 1
        //     for($k=0; $k<count($students[$i]); $k++)
        //         echo "{$students[$i][$k]} ";
        //     echo "<br>";
        //     // sposób 2
        //     echo "{$students[$i][0]} {$students[$i][1]} {$students[$i][2]} <br>";
        // }
        // echo "<br>";
        // // sposób 3

        // foreach($students as $one_student){
        //     foreach($one_student as $property)
        //         echo "$property ";
        //     echo "<br>";
        //     // sposób 4
        //     echo "{$one_student[0]} {$one_student[1]} {$one_student[2]} <br>";
        // }


    ?>
</body>
</html>