<?php
if ($_POST){//post metodu ile değer gönderildiyse
    $id=$_POST["pid"];//hidden ile gönderilen id değerini al
    $sor=mysql_query("delete from icerik where pid='$id'");//id değerine eşit id'li kaydı sil
    if ($sor){
        echo "Kayıt silindi";
    }else{
	    echo "Kayıt Silinemedi";
    }
}else{//post metodu ile değer gönderilmediyse
    $sorgu=mysql_query("select * from icerik order by kelime asc");//Tüm kayıtları seç
    echo '<table>';
    echo '<tr><td>Kelime</td><td>Anlamı</td><td>Silinsin mi?</td></tr>';
    $sayac=1;//Formların isimleri farklı olsun diye kullanılacak
    while($kayit=mysql_fetch_array($sorgu)){
	    echo '<form action="" method="post" name="form'.$sayac.'">';
    	echo '<tr>';
    	echo '<td>'.$kayit["kelime"].'</td>';
    	echo '<td>'.$kayit["anlam"].'</td>';
    	
    	echo '<td><input type="submit" name="gonder" value="Evet"/></td>';
    	echo '<input type="hidden" name="pid" value="'.$kayit["pid"].'"/>';
    	echo '</tr>';
    	echo '</form>';
        $sayac++;
    }
echo '</table>';
}
?>