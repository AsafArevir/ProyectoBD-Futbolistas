<?php 
include('index.php');
$conn= oci_connect($user,$pass,$host);
$sql = "SELECT JORNADA, NOMEQUIPOL, GOLES_L, NOMEQUIPOV, GOLES_V FROM PARTIDO WHERE fecha=to_date('2021-08-14','yyyy-mm-dd')";
$unir = oci_parse($conn,$sql);
oci_execute($unir);

?>

<!DOCTYPE html>
<html>
<head>

	<meta http-equiv="Content-Type" content="text/html;" charset="UTF-8" />
	<title></title>
</head>

<body>
 <center><h1><font color=white>Consulta Fecha</font></h1></center>
 <table border=5 width=800px align=center>

 	<thead>
		<tr>

			<td width = "50%" bgcolor="#0A2257"><div align="center"><font face="Optima" size=5px color=white >JORNADA</font></div></th>
			<th width = "50%" bgcolor="#0A2257"><div align="center"><font face="Optima" size=4px color=white >NOMEQUIPOL</font></div></th>
			<th width = "50%" bgcolor="#0A2257"><div align="center"><font face="Optima" size=4px color=white >GOLES_L</font></div></th>
			<th width = "50%" bgcolor="#0A2257"><div align="center"><font face="Optima" size=4px color=white >NOMEQUIPOV</font></div></th>
			<th width = "50%" bgcolor="#0A2257"><div align="center"><font face="Optima" size=4px color=white >GOLES_V</font></div></th>
		</tr>
	</thead>

	<tbody>

		<?php 
		while (oci_fetch($unir)) {
		?>	
			<tr>

				
				<td width = "50%" bgcolor="#FFFFFF"><div align="center"><font face="Optima" size=5px color=black ><?php echo oci_result($unir, 'JORNADA'); ?></font></div></td>
				<td width = "50%" bgcolor="#FFFFFF"><div align="center"><font face="Optima" size=5px color=black ><?php echo oci_result($unir, 'NOMEQUIPOL'); ?></font></div></td>
				<td width = "50%" bgcolor="#FFFFFF"><div align="center"><font face="Optima" size=5px color=black ><?php echo oci_result($unir, 'GOLES_L'); ?></font></div></td>
				<td width = "50%" bgcolor="#FFFFFF"><div align="center"><font face="Optima" size=5px color=black ><?php echo oci_result($unir, 'NOMEQUIPOV'); ?></font></div></td>
				<td width = "50%" bgcolor="#FFFFFF"><div align="center"><font face="Optima" size=5px color=black ><?php echo oci_result($unir, 'GOLES_V'); ?></font></div></td>
			</tr>
		<?php
		}
		oci_free_statement($unir);
		oci_close($conn);
		?>
	</tbody>
 </table>

</body>
</html>