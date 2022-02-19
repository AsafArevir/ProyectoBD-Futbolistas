<!DOCTYPE HTML>
<html>
<head>
<style>
		*{box-sizing:border-box;}

form{
	width:350px;
	padding:16px;
	border-radius:10px;
	margin:auto;
	background-color:#ccc;
}

fieldset{
	width:800px;
	padding:16px;
	border-radius:10px;
	margin:auto;
	background-color:#ccc;
}

form option{
	width:72px;
	font-weight:bold;
	display:inline-block;
}

form label{
	width:88px;
	font-weight:bold;
	display:inline-block;
}

form input[type="password"]{
	width:180px;
	padding:3px 10px;
	border:1px solid #f6f6f6;
	border-radius:3px;
	background-color:#f6f6f6;
	margin:8px 0;
	display:inline;
}

form input[type="text"]{
	width:180px;
	padding:3px 10px;
	border:1px solid #f6f6f6;
	border-radius:3px;
	background-color:#f6f6f6;
	margin:8px 0;
	display:inline;
}

form input{
	width:72px;
	font-weight:bold;
	display:inline-block;
}

form input[type="submit"]{
	width:100%;
	padding:8px 16px;
	margin-top:32px;
	border:1px solid #0000FF;
	border-radius:5px;
	display:inline-grid;
	color:#fff;
	background-color:#0000FF;
} 

form input[type="submit"]:hover{
	cursor:pointer;
}

form button[type="button"]{
	width:100%;
	padding:8px 16px;
	margin-top:32px;
	border:1px solid #0000FF;
	border-radius:5px;
	display:inline-grid;
	color:#fff;
	background-color:#0000FF;
}

form button[type="button"]:hover{
	cursor:pointer;
}


body {
  height: 1000px;
  background-image: url("https://img.freepik.com/vector-gratis/fondo-campo-futbol-degradado_23-2149011356.jpg?size=626&ext=jpg");
  background-size: cover;
  background-size: 100rem;
  background-repeat: no-repeat;
  background-position: center center;
  background-attachment: fixed;
}
.nav > li {
				float:left;
			}
			
			.nav li a {
				background-color:#000050;
				color:#fff;
				text-decoration:none;
				padding:5px 5px;
				display:block;
			}
			
			.nav li a:hover {
				background-color:#434343;
			}
			
			.nav li ul {
				display:none;
				position:absolute;
				min-width:140px;
			}
			
			.nav li:hover > ul {
				display:block;
			}
			
			.nav li ul li {
				position:relative;
			}
			
			.nav li ul li ul {
				right:-140px;
				top:0px;
			}
			#main-header {
	background: #000050;
	color: white;
    padding:3px 2px;
	margin-top: 0px;
	top: 0;
	position: fixed; /* Hacemos que la cabecera tenga una posición fija */
}
img.redimension {
  width:30px;
  height:10px;
  position:center;
}
#main-content {
                 
	width: 90%;
	max-width: 800px;
	margin: 20px auto;
	box-shadow: 0 0 10px rgba(0,0,0,.1);
}

</style>
	<meta http-equiv="Content-Type" content="text/html;" charset="UTF-8" />
	<meta charset="utf-8"/>
	<title>Login futbol</title>
</head>
<body>
    <H1 align="center"><font color = white>Login futbol</font></H1>
  <form action="login.php" method = "post">
<label>Usuario: </label><input type= "text" name = "usuario">
<label>Contraseña: </label><input type= "password" name="contraseña">
<input type="submit" name='EJECUTAR' value="Ingresar"> 
</form>

<?php
include('index.php');
if (isset($_POST['EJECUTAR'])) {
    $nombre_user =$_POST['usuario'];
	$password =$_POST['contraseña'];
	echo "<fieldset><legend><h3>Consola</h3></legend>";
	$conn= oci_connect($user,$pass,$host);
	
	if($nombre_user == "Admin" and $password == "admin01"){
		header('location:crud.php');
	}else if ($nombre_user != "Admin"){
		echo "El usuario no existe";
	} else if ($password != "admin01"){
		echo "Contraseña no valida";
	}
}
?>

</body>
</html>