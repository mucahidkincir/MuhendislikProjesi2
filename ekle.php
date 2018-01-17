
<?php

if ($_POST){//Post ile formdan değerler geldiyse
    $kelime=$_POST["kelime"];
    $anlami=$_POST["anlami"];
  
    $kontrol=mysql_query("insert into icerik (kelime,anlam) values ('$kelime','$anlami')");
    if ($kontrol){//Sorgu başarılı bir şekilde çalıştırıldıysa
	    echo "Kayıt Başarılı";
    }
    else{
	    echo "Kayıt Esnasında Bir Sorun Oluştu!";
    }
}else{//Sayfa ilk defa açılıyorsa
?>
	<form name="form1" method="post" action="yonetim.php?sayfa=ekle">
		Kelime:<input type="text" name="kelime"/><br/>
		Anlamı:<input type="text" name="anlami"/><br/>
		<input type="submit" name="gonder" value="Kaydet"/>
	</form>
<?php
}
?>