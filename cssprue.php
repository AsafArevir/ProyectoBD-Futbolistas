<?php 
include('index.php');
$conn= oci_connect($user,$pass,$host);
$sql = "SELECT ID_TABLAPOSICIONES, NOMBRE_EQUIPO, PARTIDOS_JUGADOS, PARTIDOS_GANADOS, PARTIDOS_PERDIDOS, GOLES_FAVOR,GOLES_CONTRA FROM TABLAPOCISIONES";
$unir = oci_parse($conn,$sql);
oci_execute($unir);

?>

<!DOCTYPE html>
<html>
<head>
	<style>
		body {
  			height: 1000px;
  			background-image: url("https://mobimg.b-cdn.net/v3/fetch/5b/5b7ee1721f85644d97786aecd56b8eb2.jpeg");
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

			table {
				width: 800px;
				border-collapse: collapse;
				overflow: hidden;
				box-shadow: 0 0 20px rgba(0,0,0,0.1);
				border-radius: 1.5em;
			}

			th{
				padding: 15px;
				background: rgba(10,34,87,0.8);
				color: #fff;
			}

			td {
				padding: 15px;
				background-color: rgba(255,255,255,0.6);
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

			tbody {
				tr {
					&:hover {
						background-color: rgba(255,255,255,0.3);
					}
				}
				td {
					position: relative;
						&:hover {
							&:before {
								content: "";
								position: absolute;
								left: 0;
								right: 0;
								top: -9999px;
								bottom: -9999px;
								background-color: rgba(255,255,255,0.2);
								z-index: -1;
							}
						}
				}
			}

			html,body {
				height: 100%;
			}

			body {
				margin: 0;
				font-family: sans-serif;
				font-weight: 100;
			}

	</style>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<title>Tabla de Posiciones</title>
</head>

<body>
	<button size=40px type="button" onclick="javascript:window.print()">Imprimir</button>
 	<center><h1><font color=white>Tabla de Posiciones</font></h1></center>
 	<table border=5 width=800px align=center>

 	<thead>
		<tr>
			<th width = "50%"><div align="center"><font face="Optima" size=5px color=white >Posición</font></div></th>
			<th width = "50%"><div align="center"><font face="Optima" size=5px color=white >Equipo</font></div></th>
			<th width = "50%"><div align="center"><font face="Optima" size=5px color=white >PJ</font></div></th>
			<th width = "50%"><div align="center"><font face="Optima" size=5px color=white >PG</font></div></th>
			<th width = "50%"><div align="center"><font face="Optima" size=5px color=white >PP</font></div></th>
			<th width = "50%"><div align="center"><font face="Optima" size=5px color=white >Goles a Favor</font></div></th>
			<th width = "50%"><div align="center"><font face="Optima" size=5px color=white >Goles en Contra</font></div></th>
		</tr>
	</thead>

	<tbody>

		<?php 
		$i=1;
		while (oci_fetch($unir)) {
		?>	
			<tr>
				<td width = "50%" bgcolor="#FFFFFF"><div align="center"><font face="Optima" size=5px color=black ><?php echo oci_result($unir, 'ID_TABLAPOSICIONES'); ?></font></div></td>
				<td width = "50%" bgcolor="#FFFFFF"><div align="center"><font face="Optima" size=5px color=black ><?php echo oci_result($unir, 'NOMBRE_EQUIPO'); ?></font></div></td>
				<td width = "50%" bgcolor="#FFFFFF"><div align="center"><font face="Optima" size=5px color=black ><?php echo oci_result($unir, 'PARTIDOS_JUGADOS'); ?></font></div></td>
				<td width = "50%" bgcolor="#FFFFFF"><div align="center"><font face="Optima" size=5px color=black ><?php echo oci_result($unir, 'PARTIDOS_GANADOS'); ?></font></div></td>
				<td width = "50%" bgcolor="#FFFFFF"><div align="center"><font face="Optima" size=5px color=black ><?php echo oci_result($unir, 'PARTIDOS_PERDIDOS'); ?></font></div></td>
				<td width = "50%" bgcolor="#FFFFFF"><div align="center"><font face="Optima" size=5px color=black ><?php echo oci_result($unir, 'GOLES_FAVOR'); ?></font></div></td>
				<td width = "50%" bgcolor="#FFFFFF"><div align="center"><font face="Optima" size=5px color=black ><?php echo oci_result($unir, 'GOLES_CONTRA') ?></font></div></td>

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