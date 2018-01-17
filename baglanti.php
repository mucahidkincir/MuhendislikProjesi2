<?php

$user = "proje2"; //veritabanı kullanıcı adı
$pwd = "Sivas5858"; //veritabanı şifresi
$host = "94.138.203.35"; //mysql server
$db = "muhendislik"; //veritabanı adı


$conn = mysql_connect($host,$user,$pwd) or die("MySQL sunucusuna baglanilamadi!!!".mysql_error());

mysql_select_db($db) or die("Veritabani secilemedi!!!".mysql_error());
mysql_query("SET NAMES UTF8");
?>