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
  background-image: url("https://eu-images.contentstack.com/v3/assets/bltcc7a7ffd2fbf71f5/blt0403cb63139b20ad/615f5af1c6e83930e6e12b83/124d00aa78172a2f08d9adaf8b2687e1756f06b6.png?auto=webp&fit=crop&format=jpg&quality=100");
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
	<title>CRUD Directores</title>
</head>
<body>
	<button size=40px type="button" onclick="javascript:window.print()">Imprimir</button>
	<H1 align="center"><font color=white>CRUD Cancha</font></H1>
 <form action="canchac.php" method="post">
 	<select name="opciones">
 		<option value="INSERTAR"> INSERTAR</option>
 		<option value="ELIMINAR"> ELIMINAR</option>
 		<option value="ACTUALIZAR"> ACTUALIZAR</option>
 		<option value="CONSULTA"> CONSULTA</option>
 	</select><br><br>
 	<label>ID_Cancha: </label><input type="text" name="id">
 	<label>Nombre: </label><input type="text" name="nombre">
 	<label>Ciudad: </label><input type="text" name="ciudad">
 	<label>ID_Equipo:  </label><input type="text" name="idequipo"><br>
 	<br><input type="submit" name='EJECUTAR' values="EJECUTAR"> 
</form>
<?php
	include('index.php');
	if (isset($_POST['EJECUTAR'])) {
		$opcione=$_POST['opciones'];
		$id_cancha =$_POST['id'];
		$nom_cancha =$_POST['nombre'];
		$ciudad =$_POST['ciudad'];
		$equipo =$_POST['idequipo'];
		echo "<fieldset><legend><h3>Consola</h3></legend>";
		switch ($opcione) {
			case 'INSERTAR':
  					$conn= oci_connect($user,$pass,$host);
 					$sql = "INSERT INTO cancha values ('$id_cancha','$nom_cancha', '$ciudad', '$equipo')";
 					$unir = oci_parse($conn,$sql);
  					oci_execute($unir);
  					echo"Datos Agregados";
				break;

			case 'ELIMINAR':
					$conn= oci_connect($user,$pass,$host);
 					$sql = "DELETE FROM cancha WHERE id_cancha = '$id_cancha'";
 					$unir = oci_parse($conn,$sql);
  					oci_execute($unir);
  					echo"Datos eliminados";
				break;

			case 'ACTUALIZAR':
					$conn= oci_connect($user,$pass,$host);
 					$sql = "UPDATE cancha SET nombre_cancha = '$nom_cancha', id_equipo = '$equipo' WHERE id_cancha = '$id_cancha'";
 					$unir = oci_parse($conn,$sql);
  					oci_execute($unir);
  					echo"Datos Actualizados";
				break;

			case 'CONSULTA':
  					include 'canchacc.php';
				break;
			
			default:
				
				break;
		}
		echo "</fieldset>";	
	
  	}

?>
</body>
</html>