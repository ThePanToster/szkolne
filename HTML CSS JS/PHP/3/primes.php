<?php
    if($_POST['n1']<$_POST['n2']){
        $l1 = $_POST['n1'];
        $l2 = $_POST['n2'];
    }
    else{
        $l2 = $_POST['n1'];
        $l1 = $_POST['n2'];
    }
    for($i=$l1;$i<=$l2;$i++)
        if($i>1)
            $wyniki[$i] = true;
        else
            $wyniki[$i] = false;
    for($i=$l1;$i<=$l2;$i++)
        for($j=2;$j<$i;$j++)
            if($i%$j==0)
                $wyniki[$i] = false;
    echo "Liczby pierwsze z zakresu od $l1 do $l2:\n";
    for($i=$l1;$i<=$l2;$i++)
        if($wyniki[$i])
            echo "$i ";
?>