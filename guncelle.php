<?php
if ($_POST){
    $id=$_POST["pid"];
	$kelime=$_POST["kelime"];
	$anlami=$_POST["anlami"];
	$sorgu=mysql_query("update icerik set kelime='$kelime',anlam='$anlami' where pid='$id'");
	if ($sorgu){
		echo 'Başarılı bir şekilde güncellenmiştir.';
	}else{
		echo 'Güncelleme işlemi başarısız';
	}
}else{
	echo 'Yanlış yerlerde geziniyorsun :)';
}
?>