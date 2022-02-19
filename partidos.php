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
	display:inline-table;
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
  background-image: url("https://s1.1zoom.me/b5050/932/Footbal_Fire_Stadium_Legs_Ball_Athletic_shoe_Lawn_563459_3840x2400.jpg");
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
	<title>CRUD Partidos</title>
</head>
<body>
	<button size=40px type="button" onclick="javascript:window.print()">Imprimir</button>
	<center><h1><font color=white>CRUD Partidos</font></h1></center>
 <form action="partidos.php" method="post">
 	<select name="opciones">
 		<option value="INSERTAR"> INSERTAR</option>
 		<option value="ELIMINAR"> ELIMINAR</option>
 		<option value="AGOl_L"> AGOl_L</option>
 		<option value="AGOl_V"> AGOl_V</option>
 		<option value="TABLA"> TABLA</option>
 	</select><br>
 	<label>#Partido: </label><input type="text" name="id">
 	<label>Jornada: </label><input type="text" name="jornada">
 	<label>id_cancha </label><input type="text" name="cancha">
 	<label>Fecha: </label><input type="text" name="fecha">
 	<label>Local: </label><input type="text" name="local">
 	<label>golesL: </label><input type="text" name="gl">
 	<label>Visitante: </label><input type="text" name="visitante">
 	<label>golesV: </label><input type="text" name="gv"><br>
 	<br><input type="submit" name='EJECUTAR' values="EJECUTAR"> 
</form>
<?php
	include('index.php');
	if (isset($_POST['EJECUTAR'])) {
		$opcione=$_POST['opciones'];
		$ide =$_POST['id'];
		$jor=$_POST['jornada'];
		$cancha =$_POST['cancha'];
		$fecha =$_POST['fecha'];
		$loc =$_POST['local'];
		$gl =$_POST['gl'];
		$visi=$_POST['visitante'];
		$gv =$_POST['gv'];
		echo "<fieldset><legend><h3>Consola</h3></legend>";
		switch ($opcione) {
			case 'INSERTAR':
  					$conn= oci_connect($user,$pass,$host);
 					$sql = "INSERT INTO partido values ('$ide','$jor', '$cancha', to_date('$fecha', 'dd-mm-yyyy'), '$loc', '$gl', '$visi', '$gv')";
 					$unir = oci_parse($conn,$sql);
  					oci_execute($unir);
  					echo"Datos Agregados";
				break;

			case 'ELIMINAR':
					$conn= oci_connect($user,$pass,$host);
 					$sql = "DELETE FROM partido WHERE num_partido='$ide'";
 					$unir = oci_parse($conn,$sql);
  					oci_execute($unir);
  					echo"Datos eliminados";
				break;

			case 'AGOl_L':
					$conn= oci_connect($user,$pass,$host);
 					$sql = "UPDATE partido SET goles_L='$gl' WHERE num_partido='$ide'";
 					$unir = oci_parse($conn,$sql);
  					oci_execute($unir);
  					echo"Datos Actualizados";
				break;

			case 'AGOl_V':
					$conn= oci_connect($user,$pass,$host);
 					$sql = "UPDATE partido SET goles_v='$gv' WHERE num_partido='$ide'";
 					$unir = oci_parse($conn,$sql);
  					oci_execute($unir);
  					echo"Datos Actualizados";
				break;

			case 'TABLA':
  					include 'partido.php';
				break;
			
			default:
				
				break;
		}
		echo "</fieldset>";	
	
  	}

?>
</body>
</html>