<!-- SGVyIGlsaW0gc2FoaWJpbmluIMO8c3TDvG5kZSBkYWhhIGl5aSBiaXIgYmlsZW4gdmFyZMSxci4= -->
<!-- TcO8Y2FoaWQgS0lOQ0lS -->
<!DOCTYPE html>
<html>
<style type="text/css">
        
        #alt{background-color:#000;color:#FFF;width:900px;margin:5px auto;}
        
    </style>
<style>
form {
    border: 3px solid #f1f1f1;
}

input[type=text], input[type=password] {
    width: 20%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}

button {
    background-color: #000000;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 15%;
}

.cancelbtn {
    width: auto;
    padding: 10px 18px;
    background-color: #f44336;
}

.imgcontainer {
    text-align: center;
    margin: 24px 0 12px 0;
}

img.avatar {
    width: 40%;
    border-radius: 50%;
}

.container {
    padding: 16px;
}

span.psw {
    float: right;
    padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
    span.psw {
       display: block;
       float: none;
    }
    .cancelbtn {
       width: 100%;
    }
}
</style>
<body>

<center><h2>Doğanşar Sözlük Giriş Paneli</h2></center>

<form action="yonetim.php" method="POST">
  <div class="imgcontainer">
    <img src="tozanli.jpg" width="200" height="200" alt="Avatar" class="avatar">
  </div>

  <div class="container">
    <center>
    <label><b>Kullanıcı Adı</b></label>
    <br>
    <input type="text" placeholder="Kullanıcı adını giriniz" name="uname" required>
    <br>
    <label><b>Parola</b></label>
    <br>
    <input type="password" placeholder="Parolayı giriniz" name="psw" required>
    <br>    
    <button type="submit">Giriş Yap</button>
    </center>
  </div>

  <div id="alt" >
   <center>Tüm &copy;Hakları Saklıdır. Mücahid KINCIR tarafından kodlanmıştır.</center>
  </div>
</form>

</body>
</html>