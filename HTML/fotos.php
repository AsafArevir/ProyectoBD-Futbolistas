<?php 
include('index.php');
$conn= oci_connect($user,$pass,$host);
$sql = "SELECT NOMBRE, APELLIDO, NO_CAMISETA, POSICION, APODO FROM JUGADOR WHERE ID_EQUIPO=31";
$unir = oci_parse($conn,$sql);
oci_execute($unir);

?>

<!DOCTYPE html>
<html>
<head>
	</style>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<title></title>
</head>

<body>
 <center><h1>America</h1></center>

 <table border=5 width=300px align="center">

 	<thead>
		<tr>
			<th width = "50%" bgcolor="#0A2257"><div align="center"><font face="Optima" size=4px color=white >NOMBRE</font></div></th>
			<th width = "50%" bgcolor="#0A2257"><div align="center"><font face="Optima" size=4px color=white >APELLIDO</font></div></th>
			<th width = "50%" bgcolor="#0A2257"><div align="center"><font face="Optima" size=4px color=white >NO CAMISETA</font></div></th>
			<th width = "50%" bgcolor="#0A2257"><div align="center"><font face="Optima" size=4px color=white >POSICION</font></div></th>
			<th width = "50%" bgcolor="#0A2257"><div align="center"><font face="Optima" size=4px color=white >APODO</font></div></th>
		</tr>
	</thead>

	<tbody>
		<?php 
		while (oci_fetch($unir)) {
		?>	
			<tr>
				<td width = "50%" bgcolor="#FFFFFF"><div align="center"><font face="Optima" size=5px color=black ><?php echo oci_result($unir, 'NOMBRE'); ?></font></div></td>
				<td width = "50%" bgcolor="#FFFFFF"><div align="center"><font face="Optima" size=5px color=black ><?php echo oci_result($unir, 'APELLIDO'); ?></font></div></td>
				<td width = "50%" bgcolor="#FFFFFF"><div align="center"><font face="Optima" size=5px color=black ><?php echo oci_result($unir, 'NO_CAMISETA'); ?></font></div></td>
				<td width = "50%" bgcolor="#FFFFFF"><div align="center"><font face="Optima" size=5px color=black ><?php echo oci_result($unir, 'POSICION'); ?></font></div></td>
				<td width = "50%" bgcolor="#FFFFFF"><div align="center"><font face="Optima" size=5px color=black ><?php echo oci_result($unir, 'APODO'); ?></font></div></td>
			</tr>
		<?php
		}
		oci_free_statement($unir);
		oci_close($conn);
		?>
	</tbody>
 </table>



	<table border=5 width=300px align="center">
 	<thead>
		<tr>
			<th width = "50%" bgcolor="#0A2257"><div align="center"><font face="Optima" size=4px color=white >Foto</font></div></th>
		</tr>
	</thead>

	<tbody>	
			<tr><td width = "50%" bgcolor="ffffff"><div align="center"><img src="MemoOchoa.jpg" width=150px><font face="Optima" size=4px color=black><p>Guillermo Ochoa</p></font></div></td></tr>
			<tr><td width = "50%" bgcolor="ffffff"><div align="center"><img src="oscar.jpg" width=150px><font face="Optima" size=4px color=black><p>Oscar Jimenez</p></font></div></td></tr>
			<tr><td width = "50%" bgcolor="ffffff"><div align="center"><img src="jorgesanchez.jpg" width=130px><font face="Optima" size=4px color=black><p>Jorge Sanchez</p></font></div></td></tr>
			<tr><td width = "50%" bgcolor="ffffff"><div align="center"><img src="bruno.jpg" width=180px><font face="Optima" size=4px color=black><p>Bruno Valdez</p></font></td></div></tr>
			<tr><td width = "50%" bgcolor="ffffff"><div align="center"><img src="ema.png" width=130px><font face="Optima" size=4px color=black><p>Emmanuel Aguilera</p></font></div></td></tr>
			<tr><td width = "50%" bgcolor="ffffff"><div align="center"><img src="miguel.jpg" width=180px><font face="Optima" size=4px color=black><p>Miguel Layun</p></font></div></td></tr>
			<tr><td width = "50%" bgcolor="ffffff"><div align="center"><img src="salvador.jpg" width=180px><font face="Optima" size=4px color=black><p>Salvador Reyes</p></font></div></td></tr>
			<tr><td width = "50%" bgcolor="ffffff"><div align="center"><img src="richa.jpg" width=180px><font face="Optima" size=4px color=black><p>Richard Sanchez</p></font></div></td></tr>
			<tr><td width = "50%" bgcolor="ffffff"><div align="center"><img src="pedro.jpg" width=180px><font face="Optima" size=4px color=black><p>Pedro Aquino</p></font></div></td></tr>
			<tr><td width = "50%" bgcolor="ffffff"><div align="center"><img src="oro.jpg" width=180px><font face="Optima" size=4px color=black><p>Alvaro Fidalgo</p></font></div></td></tr>
			<tr><td width = "50%" bgcolor="ffffff"><div align="center"><img src="jorgesanchez.jpg" width=150px ><font face="Optima" size=4px color=black><p>Henry Martin</p></font></div></td></tr>

	</tbody>
 </table>


</body>
</html>