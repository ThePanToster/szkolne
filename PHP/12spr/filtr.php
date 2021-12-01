<h1>KANTOR</h1>
<form action="index.php" method="post">
    Od:<input type="date" name="data_od">
    Do:<input type="date" name="data_do">
    <select name="sortowanie">
        <option value="ASC">od najstarszych</option>
        <option value="DESC">od najsnowszych</option>
    </select>
    <input type="submit" value="Wyświetl" name="filtrowanie">
</form>