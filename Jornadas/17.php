<?php 
include('index.php');
$conn= oci_connect($user,$pass,$host);
$sql = "SELECT FECHA, NOMEQUIPOL, GOLES_L, NOMEQUIPOV, GOLES_V FROM PARTIDO WHERE JORNADA=17";
$unir = oci_parse($conn,$sql);
oci_execute($unir);

?>

<!DOCTYPE html>
<html>
<head>
	<style type="text/css">
		table {
				width: 800px;
				border-collapse: collapse;
				overflow: hidden;
				box-shadow: 0 0 20px rgba(0,0,0,0.1);
				border-radius: 1.5em;
			}

			th{
				padding: 15px;
				background: rgba(10,34,87,0.9);
				color: #fff;
			}

			td {
				padding: 15px;
				background-color: rgba(255,255,255,0.8);
				color: #fff;
			}

			th {
				text-align: left;
			}

			thead {
				th {
					background-color: #0A2257;
				}
			}

			html,body {
				height: 100%;
			}

			body {
				margin: 0;
				font-family: didot;
				font-weight: 100;
			}

	</style>

	<meta http-equiv="Content-Type" content="text/html;" charset="UTF-8" />
	<title></title>
</head>

<body>
 <center><h2><font color=white>JORNADA 17</font></h2></center>
 <table border=5 width=800px align=center>

 	<thead>
		<tr>

			<th width = "50%"><div align="center"><font face="Optima" size=4px color=white >Fecha</font></div></th>
			<th width = "50%"><div align="center"><font face="Optima" size=4px color=white >Local</font></div></th>
			<th width = "50%"><div align="center"><font face="Optima" size=4px color=white >Goles</font></div></th>
			<th width = "50%"><div align="center"><font face="Optima" size=4px color=white >Visitante</font></div></th>
			<th width = "50%"><div align="center"><font face="Optima" size=4px color=white >Goles</font></div></th>
		</tr>
	</thead>

	<tbody>

		<?php 
		while (oci_fetch($unir)) {
		?>	
			<tr>

				
				<td width = "50%"><div align="center"><font face="Optima" size=4px color=black ><?php echo oci_result($unir, 'FECHA'); ?></font></div></td>
				<td width = "50%"><div align="center"><font face="Optima" size=4px color=black ><?php echo oci_result($unir, 'NOMEQUIPOL'); ?></font></div></td>
				<td width = "50%"><div align="center"><font face="Optima" size=4px color=black ><?php echo oci_result($unir, 'GOLES_L'); ?></font></div></td>
				<td width = "50%"><div align="center"><font face="Optima" size=4px color=black ><?php echo oci_result($unir, 'NOMEQUIPOV'); ?></font></div></td>
				<td width = "50%"><div align="center"><font face="Optima" size=4px color=black ><?php echo oci_result($unir, 'GOLES_V'); ?></font></div></td>
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