<?php
ob_start();
session_start();
$user = $_POST["uname"];
$pass = $_POST["psw"];
if(!isset($_SESSION["login"])){
    if ($user == "admin" && $pass == "admin") {
	$_SESSION["login"] = "true";
    $_SESSION["user"] = $user;
    $_SESSION["pass"] = $pass;
}
else {
print '<script>alert("Giriş Başarısız !"); window.location = "index.php";</script>';
}
}
else {
    
}


?>

<!-- SGVyIGlsaW0gc2FoaWJpbmluIMO8c3TDvG5kZSBkYWhhIGl5aSBiaXIgYmlsZW4gdmFyZMSxci4= -->
<!-- TcO8Y2FoaWQgS0lOQ0lS -->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
	<style type="text/css">
		body{margin:auto;background-color:#CCC;}
		h1{width:900px;margin:0px auto;height:50px;padding-top:0px;background-color:#5555FF;}
		#menu{width:900px;margin:5px auto;background-color:#FFF;}
		#menu a{text-decoration:none;font-size:20px;paddind:0px 7px;margin:0px 5px;color:#000;}
		#menu a:hover{background-color:#000;color:#fff;}
		#icerik{width:900px;margin:5px auto;border:#ddd 1px solid; background-color:#ddd;}
		#alt{background-color:#000;color:#FFF;width:900px;margin:5px auto;}
		.sayfalama{height:50px;padding:3px;}
		.sayfalama a{color:#000; text-decoration:none;margin:0px 3px; padding:2px 4px;}
		.sayfalama a.syf_aktif{background-color:#000; color:#FFF;}
	</style>
	<style>
input[type=text], select {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}

input[type=submit] {
    width: 100%;
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

input[type=submit]:hover {
    background-color: #45a049;
}

div {
    border-radius: 5px;
    background-color: #f2f2f2;
    padding: 5px;
}
</style>
</head>
<body>
	<center><h1>Doğanşar Sözlük Yönetim Paneli</h1></center>
	<div id="menu">
		<a href="yonetim.php">Ana Sayfa</a>
		<a href="yonetim.php?sayfa=ekle">Kayıt Ekle</a>
		<a href="yonetim.php?sayfa=sil">Sil</a>
		<a href="yonetim.php?sayfa=duzenle">Düzenle</a>
		<a href="yonetim.php?sayfa=listele">Listele</a>
		<a href="yonetim.php?sayfa=arama">Arama</a>
		<a href="cikisyap.php">Çıkış Yap</a>
	</div>
	<div id="icerik">
	<?php
	include("baglanti.php");
	$sayfa=@$_GET["sayfa"];
	switch($sayfa){
		case "ekle";
			include("ekle.php");
		break;
		case "sil";
			include("sil.php");
		break;
		case "duzenle";
			include("duzenle.php");
		break;
		case "listele";
			include("listele.php");
		break;
		
		case "guncelle";
			include("guncelle.php");
		break;
		case "arama";
			include("arama.php");
		break;
		default;
			include("anasayfa.php");
		break;
	
	}
	?>
	</div>
	
	<center><img src="tozanli.jpg" width="750" height="490"></center><div id="alt">
	<center>Tüm &copy;Hakları Saklıdır. Mücahid KINCIR tarafından kodlanmıştır.</center>
	</div>
</body>
</html>