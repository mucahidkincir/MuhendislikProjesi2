<?php
 
$sorgu=mysql_query("select * from icerik order by kelime asc");
echo "<table>";
 
echo '<tr><td><b>Kelime</b></td><td><b>Anlamı</b></td></tr>';
 
while($kayit=mysql_fetch_array($sorgu)){
    echo '<tr>';
    echo '<td>'.$kayit["kelime"].'</td>';
    echo '<td>'.$kayit["anlam"].'</td>';
    echo '</tr>';
}
 
echo '</table>';
 
?>