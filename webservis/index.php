<?php
include "db.php";
include "httpFonksiyonlari.php";
$islem = isset($_GET["islem"]) ? addslashes(trim($_GET["islem"])) : null;
$jsonArray = array(); // array değişkenimiz bunu en alta json objesine çevireceğiz. 
$jsonArray["hata"] = FALSE; // Başlangıçta hata yok olarak kabul edelim. 

$_code = 200; // HTTP Ok olarak durumu kabul edelim. 

	
    // kelime ekleme kısmı burada olacak. CREATE İşlemi 
 if($_SERVER['REQUEST_METHOD'] == "POST") {
 	
 	// verilerimizi post yöntemi ile alalım. 
    $kelime = addslashes($_POST["kelime"]);
    $anlami = addslashes($_POST["anlami"]);
    
    // Kontrollerimizi yapalım.
    // gelen kelime veri tabanında kayıtlı mı kontrol edelim. 
    $kelimeler = $db->query("SELECT * from icerik WHERE kelime='$kelime' ");
    
    if(empty($kelime) || empty($anlami) ) {
    	$_code = 400; 
		$jsonArray["hata"] = TRUE; // bir hata olduğu bildirilsin.
        $jsonArray["hataMesaj"] = "Boş Alan Bırakmayınız."; // Hatanın neden kaynaklı olduğu belirtilsin.
	}
   else if($kelimeler->rowCount() !=0) {
    	$_code = 400;
        $jsonArray["hata"] = TRUE; // bir hata olduğu bildirilsin.
        $jsonArray["hataMesaj"] = "Kelime kayıtlı."; 
    }else {
    	
			$ex = $db->prepare("insert into icerik set 
			kelime= :kelimem, 
			anlam=  :anlamim");
		$ekle = $ex->execute(array(
			"kelimem" => $kelime,
			"anlamim" => $anlami
			
		));
		
		
		if(	$ekle) {
			$_code = 201;
			$jsonArray["mesaj"] = "Ekleme Başarılı.";
		}else {
			$_code = 400;
			 $jsonArray["hata"] = TRUE; // bir hata olduğu bildirilsin.
       		 $jsonArray["hataMesaj"] = "Sistem Hatası.";
		}
	}
}else if($_SERVER['REQUEST_METHOD'] == "PUT") {
     $gelen_veri = json_decode(file_get_contents("php://input")); // veriyi alıp diziye atadık.
    	
    	// basitçe bi kontrol yaptık veriler varmı yokmu diye 
     if(	isset($gelen_veri->kelime) && 
     		isset($gelen_veri->anlami) &&
     		isset($gelen_veri->pid)
     	) {
     		
     		// veriler var ise güncelleme yapıyoruz.
				$q = $db->prepare("UPDATE icerik SET kelime= :kelimem, anlam= :anlamim WHERE pid= :pidim ");
				$q2 = $db->query("SELECT * from icerik WHERE pid='$gelen_veri->pid' ");
				if($q2->rowCount() ==0) {
    			$_code = 400;
        		$jsonArray["hata"] = TRUE; // bir hata olduğu bildirilsin.
       			 $jsonArray["hataMesaj"] = "Kelime kayıtlı değil."; 

    			}
    			else {
    				$update = $q->execute(array(
			 			"kelimem" => $gelen_veri->kelime,
			 			"anlamim" => $gelen_veri->anlami,
			 			"pidim" => $gelen_veri->pid	 	
			 	));

    				// güncelleme başarılı ise bilgi veriyoruz. 
			 	if($update) {
			 		$_code = 200;
			 		$jsonArray["mesaj"] = "Güncelleme Başarılı";
			 	}
			 	else {
			 		// güncelleme başarısız ise bilgi veriyoruz. 
			 		$_code = 400;
					$jsonArray["hata"] = TRUE;
		 			$jsonArray["hataMesaj"] = "Sistemsel Bir Hata Oluştu";
				}

    			}	
				
			 	
			 	
		}else {
			// gerekli veriler eksik gelirse apiyi kulanacaklara hangi bilgileri istediğimizi bildirdik. 
			$_code = 400;
			$jsonArray["hata"] = TRUE;
	 		$jsonArray["hataMesaj"] = "kelime,anlami,pid Verilerini json olarak göndermediniz.";
		}

} else if($_SERVER['REQUEST_METHOD'] == "DELETE") {

    // Kelime silme işlemi burada olacak. DELETE işlemi 
    if(isset($_GET["pid"]) && !empty(trim($_GET["pid"]))) {
		$pid = intval($_GET["pid"]);
		$kelimeVarMi = $db->query("select * from icerik where pid='$pid'")->rowCount();
		if($kelimeVarMi) {
			
			$sil = $db->query("delete from icerik where pid='$pid'");
			if( $sil ) {
				$_code = 200;
				$jsonArray["mesaj"] = "Kelime Silindi.";
			}else {
				// silme başarısız ise bilgi veriyoruz. 
				$_code = 400;
				$jsonArray["hata"] = TRUE;
	 			$jsonArray["hataMesaj"] = "Sistemsel Bir Hata Oluştu";
			}
		}else {
			$_code = 400; 
			$jsonArray["hata"] = TRUE; // bir hata olduğu bildirilsin.
    		$jsonArray["hataMesaj"] = "Geçersiz pid"; // Hatanın neden kaynaklı olduğu belirtilsin.
		}
	}else {
		$_code = 400;
		$jsonArray["hata"] = TRUE; // bir hata olduğu bildirilsin.
    	$jsonArray["hataMesaj"] = "Lütfen pid değişkeni gönderin"; // Hatanın neden kaynaklı olduğu belirtilsin.
	}
} else if($_SERVER['REQUEST_METHOD'] == "GET") {


    // Kelime bilgisi listeleme burada olacak. GET işlemi 
    if(isset($_GET["pid"]) && !empty(trim($_GET["pid"]))) {
		$pid = intval($_GET["pid"]);
		$userVarMi = $db->query("select * from icerik where pid='$pid'")->rowCount();
		if($userVarMi) {
			
			$bilgiler = $db->query("select * from  icerik where pid='$pid'")->fetch(PDO::FETCH_ASSOC);
			$jsonArray["kelime-bilgileri"] = $bilgiler;
			$_code = 200;
			
		}else {
			$_code = 400;
			$jsonArray["hata"] = TRUE; // bir hata olduğu bildirilsin.
    		$jsonArray["hataMesaj"] = "Kelime bulunamadı"; // Hatanın neden kaynaklı olduğu belirtilsin.
		}
	}else {
		$_code = 400;
		$jsonArray["hata"] = TRUE; // bir hata olduğu bildirilsin.
    	$jsonArray["hataMesaj"] = "Lütfen pid değişkeni gönderin"; // Hatanın neden kaynaklı olduğu belirtilsin.
	}
}
else {
	$_code = 406;
	$jsonArray["hata"] = TRUE;
 	$jsonArray["hataMesaj"] = "Geçersiz method!";
}


SetHeader($_code);
$jsonArray[$_code] = HttpStatus($_code);
echo json_encode($jsonArray);
?>