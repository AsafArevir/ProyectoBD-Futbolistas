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
	width:72px;
	font-weight:bold;
	display:inline-block;
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


body {
  height: 1000px;
  background-image: url("https://www.redusers.com/noticias/wp-content/uploads/2013/11/redusers-entrevista-autodesk-metegol-03.jpg");
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
	<title>CRUD Jugadores</title>
</head>
<body>
	<button size=40px type="button" onclick="javascript:window.print()">Imprimir</button>
	<center><h1><font color=white>CRUD Jugadores</font></h1></center>
 <form action="Jugadoresc.php" method="post">
 	<select name="opciones">
 		<option value="INSERTAR"> INSERTAR</option>
 		<option value="ELIMINAR"> ELIMINAR</option>
 		<option value="ACTUALIZAR"> ACTUALIZAR</option>
 		<option value="TABLAS"> TABLAS</option>
 	</select><br><br>
 	<label>#Jugador: </label><input type="text" name="id">
 	<label>Nombre: </label><input type="text" name="nombre">
 	<label>Apellido: </label><input type="text" name="apellido">
 	<label>#Camiseta: </label><input type="text" name="camiseta">
 	<label>Posicion: </label><input type="text" name="posicion">
 	<label>Apodo: </label><input type="text" name="apodo">
 	<label>Id_equipo: </label><input type="text" name="idequipo"><br>
 	<br><input type="submit" name='EJECUTAR' values="EJECUTAR"> 
</form>
<?php
	include('index.php');
	if (isset($_POST['EJECUTAR'])) {
		$opcione=$_POST['opciones'];
		$ide =$_POST['id'];
		$nomb =$_POST['nombre'];
		$apell =$_POST['apellido'];
		$cami =$_POST['camiseta'];
		$posi =$_POST['posicion'];
		$apod =$_POST['apodo'];
		$equipo =$_POST['idequipo'];
		echo "<fieldset><legend><h3>Consola</h3></legend>";
		switch ($opcione) {
			case 'INSERTAR':
  					$conn= oci_connect($user,$pass,$host);
 					$sql = "INSERT INTO jugador values ('$ide','$nomb', '$apell', '$cami', '$posi', '$apod', '$equipo')";
 					$unir = oci_parse($conn,$sql);
  					oci_execute($unir);
  					echo"Datos Agregados";
				break;

			case 'ELIMINAR':
					$conn= oci_connect($user,$pass,$host);
 					$sql = "DELETE FROM jugador WHERE id_fut='$ide'";
 					$unir = oci_parse($conn,$sql);
  					oci_execute($unir);
  					echo"Datos eliminados";
				break;

			case 'ACTUALIZAR':
					$conn= oci_connect($user,$pass,$host);
 					$sql = "UPDATE jugador SET id_equipo='$equipo' WHERE id_fut='$ide'";
 					$unir = oci_parse($conn,$sql);
  					oci_execute($unir);
  					echo"Datos Actualizados";
				break;

			case 'TABLAS':
  					include 'jugadores.php';
				break;
			
			default:
				
				break;
		}
		echo "</fieldset>";	
	
  	}

?>
</body>
</html>