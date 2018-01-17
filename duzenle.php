<?php
if ($_POST){//Post ile değer gelmişse yani listeleme alanında kaydın yanındaki "Güncelle" ye tıklandıysa
    $id=$_POST["pid"];//Hidden elementinden gelen id bilgisi
	$sorgu=mysql_query("select * from icerik where pid='$id' order by kelime asc");
	$kayit=mysql_fetch_array($sorgu);
	echo'
	<form name="form1" method="post" action="yonetim.php?sayfa=guncelle">
		Kelime:<input type="text" name="kelime" value="'.$kayit["kelime"].'"/><br/>
		Anlamı:<input type="text" name="anlami" value="'.$kayit["anlam"].'"/><br/>
		<input type="hidden" name="pid" value="'.$kayit["pid"].'"/>
		<input type="submit" name="gonder" value="Güncelle"/>
		</form>';//Kayıt bilgileri text kutularına  yerleştiriliyor.
}else{//Başlangıçta Kayıtlar Listeleniyor
	$sorgu=mysql_query("select * from icerik order by kelime");
	echo '<table>';
	echo '<tr>
	<td>Kelime</td><td>Anlamı</td><td>Güncellensin mi?</td>
	</tr>';
	while($kayit=mysql_fetch_array($sorgu)){
		echo '<form action="yonetim.php?sayfa=duzenle" method="post" name="form1">';
		echo '<tr>';
		echo '<td>'.$kayit["kelime"].'</td>';
		echo '<td>'.$kayit["anlam"].'</td>';
		echo '<td><input type="submit" name="gonder" value="Güncelle"/></td>';
		echo '<input type="hidden" name="pid" value="'.$kayit["pid"].'"/>';
		echo '</tr>';
		echo '</form>';
	}
	echo '</table>';
}
?>