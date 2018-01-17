<?php
if ($_POST){
    $ara=$_POST["ara"];
	$sorgu=mysql_query("select * from icerik where kelime like '%$ara%'");
	if (empty($ara)){
		echo 'Arama alanını boş bıraktın';
	}else{
		if (mysql_num_rows($sorgu)>0){
			while($kayit=mysql_fetch_array($sorgu)){
				echo $kayit["kelime"].' '.$kayit["anlam"];
				echo '<br/>';
			}
		}else{
			echo 'Eşleşen Kayıt Yok.';
		}
	}
}else{
?>
<form name="form1" action="yonetim.php?sayfa=arama" method="post">
Aranacak Kelime:<input type="text" name="ara"/>
<input type="submit" name="gonder" value="Ara"/>
</form>
<?php
}
?>