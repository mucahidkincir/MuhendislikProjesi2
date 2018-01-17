<?php
$host = "94.138.203.35";
$user = "proje2";
$pass = "Sivas5858";
$db = "muhendislik";
 
try {
 $db = new PDO("mysql:host=$host;dbname=$db", $user, $pass);
        $db->query("SET CHARACTER SET utf8");
}catch(PDOException $e) {
 die( $e->getMessage());
}
 
?>