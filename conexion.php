<!DOCTYPE HTML>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html;" charset="UTF-8" />
	<title> Conexion de PHP y ORACLE </title>
</head>
<body>
	<button size=40px type="button" onclick="javascript:window.print()">Imprimir</button>
 <center><h1>ORACLE Y PHP</h1></center>
 <form action="conexion.php" method="post">
 	<select name="opciones">
 		<option value="INSERTAR"> INSERTAR</option>
 		<option value="ELIMINAR"> ELIMINAR</option>
 		<option value="ACTUALIZAR"> ACTUALIZAR</option>
 		<option value="CREAR"> CREAR</option>
 		<option value="TABLAS"> TABLAS</option>
 	</select><br>
 	<h3>Nombre: </h3><input type="text" name="nombre">
 	<h3>Edad: </h3><input type="text" name="edad"><br>
 	<input type="submit" name='EJECUTAR' values="EJECUTAR"> 
</form>
<?php
	include('index.php');
	if (isset($_POST['EJECUTAR'])) {
		$opcione=$_POST['opciones'];
		$nombre =$_POST['nombre'];
		$edad =$_POST['edad'];
		echo "<fieldset><legend><h3>Consola</h3></legend>";
		switch ($opcione) {
			case 'INSERTAR':
  					$conn= oci_connect($user,$pass,$host);
 					$sql = "INSERT INTO test3conect values ('$nombre','$edad')";
 					$unir = oci_parse($conn,$sql);
  					oci_execute($unir);
  					echo"Datos Agregados";
				break;

			case 'ELIMINAR':
					$conn= oci_connect($user,$pass,$host);
 					$sql = "DELETE FROM test3conect WHERE nombre='$nombre'";
 					$unir = oci_parse($conn,$sql);
  					oci_execute($unir);
  					echo"Datos eliminados";
				break;

			case 'ACTUALIZAR':
					$conn= oci_connect($user,$pass,$host);
 					$sql = "UPDATE test3conect SET edad='$edad' WHERE nombre='$nombre'";
 					$unir = oci_parse($conn,$sql);
  					oci_execute($unir);
  					echo"Datos Actualizados";
				break;

			case 'TABLAS':
  					include 'Tablaposiciones.php';
  					include 'jugadores.php';
  					include 'equipos.php';
  					include 'director.php';
  					include 'cancha.php';
  					include 'partido.php';
  					include 'p_a.php';
  					include 'arbitro.php';
				break;

			case 'CREAR':
					$conn= oci_connect($user,$pass,$host);
  					$sql = "CREATE TABLE test3conect (nombre varchar2(25), edad number)";
 					$unir = oci_parse($conn,$sql);
  					oci_execute($unir);
  					echo"Tabla Creada";
				break;
			
			default:
				
				break;
		}
		echo "</fieldset>";	
	
  	}

?>
</body>
</html>