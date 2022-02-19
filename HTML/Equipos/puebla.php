<?php 
include('index.php');
$conn= oci_connect($user,$pass,$host);
$sql = "SELECT NOMBRE, APELLIDO, NO_CAMISETA, POSICION, APODO FROM JUGADOR WHERE ID_EQUIPO=40";
$unir = oci_parse($conn,$sql);
oci_execute($unir);
?>

<?php 
include('index.php');
$conn1= oci_connect($user,$pass,$host);
$sql1 = "SELECT * FROM DIRECTOR WHERE id_director=109";
$unir1 = oci_parse($conn1,$sql1);
oci_execute($unir1);
?>

<?php
include('index.php');
$conn2= oci_connect($user,$pass,$host);
$sql2 = "SELECT * FROM  auxiliar WHERE ID_EQUIPO=40";
$unir2 = oci_parse($conn2,$sql2);
oci_execute($unir2);
?>

<!DOCTYPE html>
<html>
<head>
<style>
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
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<title></title>
</head>

<body>
	<button size=40px type="button" onclick="javascript:window.print()">Imprimir</button>
 <center><h1><font color=white>Jugadores</font></h1></center>
 <table border=5 width=800px align=center>

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
				<td width = "50%" bgcolor="#FFFFFF"><div align="center"><font face="Optima" size=4px color=black ><?php echo oci_result($unir, 'NOMBRE'); ?></font></div></td>
				<td width = "50%" bgcolor="#FFFFFF"><div align="center"><font face="Optima" size=4px color=black ><?php echo oci_result($unir, 'APELLIDO'); ?></font></div></td>
				<td width = "50%" bgcolor="#FFFFFF"><div align="center"><font face="Optima" size=4px color=black ><?php echo oci_result($unir, 'NO_CAMISETA'); ?></font></div></td>
				<td width = "50%" bgcolor="#FFFFFF"><div align="center"><font face="Optima" size=4px color=black ><?php echo oci_result($unir, 'POSICION'); ?></font></div></td>
				<td width = "50%" bgcolor="#FFFFFF"><div align="center"><font face="Optima" size=4px color=black ><?php echo oci_result($unir, 'APODO'); ?></font></div></td>
			</tr>
		<?php
		}
		oci_free_statement($unir);
		oci_close($conn);
		?>
	</tbody>
 </table>


<center><h1><font color=white>Fotos</font></h1></center>
 <table border=5 width=300px align="center">
 	<thead>
		<tr>
			<th width = "50%" bgcolor="#0A2257"><div align="center"><font face="Optima" size=4px color=white >Foto</font></div></th>
		</tr>
	</thead>

	<tbody>	
			<tr><td width = "50%" bgcolor="ffffff"><div align="center"><img src="https://www.ceroacero.es/img/jogadores/87/362887_med__20161012083350_anthony_silva.jpg" width=150px><font face="Optima" size=4px color=black><p>Antoni Silva</p></font></div></td></tr>
			<tr><td width = "50%" bgcolor="ffffff"><div align="center"><img src="https://static.wikia.nocookie.net/liga-mx/images/9/9a/Jes%C3%BAsIv%C3%A1nRdez.jpg/revision/latest/top-crop/width/360/height/450?cb=20200108013735&path-prefix=es" width=150px><font face="Optima" size=4px color=black><p>Jesus Rodriguez</p></font></div></td></tr>
			<tr><td width = "50%" bgcolor="ffffff"><div align="center"><img src="https://img.a.transfermarkt.technology/portrait/big/147157-1581590524.png?lm=1" width=130px><font face="Optima" size=4px color=black><p>Hugo Rodriguez</p></font></div></td></tr>
			<tr><td width = "50%" bgcolor="ffffff"><div align="center"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTES1YwGTl_axZJSdL266tU_BdZkspivdeRmB_pgI5wjt2o3en2AxW9TkxSe2aEHS2CSj8&usqp=CAU" width=180px><font face="Optima" size=4px color=black>Felix Torres</p></font></div></td></tr>
			<tr><td width = "50%" bgcolor="ffffff"><div align="center"><img src="https://static.wikia.nocookie.net/liga-mx/images/e/eb/IsraelReyes.jpg/revision/latest?cb=20210505012149&path-prefix=es" width=130px><font face="Optima" size=4px color=black><p>Israel Reyes</p></font></div></td></tr>
			<tr><td width = "50%" bgcolor="ffffff"><div align="center"><img src="https://www.ceroacero.es/img/jogadores/41/809241_med__20210806212431_juan_segovia.png" width=180px><font face="Optima" size=4px color=black><p>Juan Pablo Segovia</p></font></div></td></tr>
			<tr><td width = "50%" bgcolor="ffffff"><div align="center"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxceVYTy64DDb1uoP92FRh26wQOjFHVR8axg&usqp=CAU" width=180px><font face="Optima" size=4px color=black><p>Emanuel Gularte</p></font></div></td></tr>
			<tr><td width = "50%" bgcolor="ffffff"><div align="center"><img src="https://img.a.transfermarkt.technology/portrait/big/699797-1611672667.jpg?lm=1" width=180px><font face="Optima" size=4px color=black><p>Ramon Juarez</p></font></div></td></tr>
			<tr><td width = "50%" bgcolor="ffffff"><div align="center"><img src="https://static-img.zz.pt/jogadores/02/87002_20210806221947_george_corral.png" width=180px><font face="Optima" size=4px color=black><p>Jorge Ulises Corral</p></font></div></td></tr>
			<tr><td width = "50%" bgcolor="ffffff"><div align="center"><img src="https://siid.ligamx.net/docs/archdgtl/aflddrvd/photos/68097/68097.jpg" width=180px><font face="Optima" size=4px color=black><p>Diego Eduardo De Buen</p></font></div></td></tr>
			<tr><td width = "50%" bgcolor="ffffff"><div align="center"><img src="https://cdn.sofifa.net/players/224/150/21_120.png" width=180px><font face="Optima" size=4px color=black><p>Javier Alvan Salas</p></font></div></td></tr>
			<tr><td width = "50%" bgcolor="ffffff"><div align="center"><img src="https://www.ceroacero.es/img/jogadores/11/809311_med__20210807000325_pablo_parra.png" width=180px><font face="Optima" size=4px color=black><p>Pablo Alejandro Parra</p></font></div></td></tr>
			<tr><td width = "50%" bgcolor="ffffff"><div align="center"><img src="https://static.wikia.nocookie.net/liga-mx/images/4/4c/CTabo.jpg/revision/latest?cb=20210505012209&path-prefix=es" width=150px ><font face="Optima" size=4px color=black><p>Christian Tabo</p></font></div></td></tr>
			<tr><td width = "50%" bgcolor="ffffff"><div align="center"><img src="https://static.wikia.nocookie.net/liga-mx/images/a/ac/DanAlvarez.jpg/revision/latest/top-crop/width/360/height/450?cb=20210426033820&path-prefix=es" width=150px ><font face="Optima" size=4px color=black><p>Daniel Alvarez</p></font></div></td></tr>

	</tbody>
 </table>


<center><h1><font color=white>Director Tecnico</font></h1></center>
 <table border=5 width=800px align=center>

 	<thead>
		<tr>
			<th width = "50%" bgcolor="#0A2257"><div align="center"><font face="Optima" size=4px color=white >NOMBRE</font></div></th>
			<th width = "50%" bgcolor="#0A2257"><div align="center"><font face="Optima" size=4px color=white >APELLIDO</font></div></th>
		</tr>
	</thead>

	<tbody>

		<?php 
		while (oci_fetch($unir1)) {
		?>	
			<tr>
				<td width = "50%" bgcolor="#FFFFFF"><div align="center"><font face="Optima" size=4px color=black ><?php echo oci_result($unir1, 'NOMBRE'); ?></font></div></td>
				<td width = "50%" bgcolor="#FFFFFF"><div align="center"><font face="Optima" size=4px color=black ><?php echo oci_result($unir1, 'APELLIDO'); ?></font></div></td>
			</tr>
		<?php
		}
		oci_free_statement($unir1);
		oci_close($conn1);
		?>
	</tbody>
 </table>


 <center><h1><font color=white>Auxiliares Tecnicos</font></h1></center>
<table border=5 width=800px align=center>

 	<thead>
		<tr>
			<th width = "50%"><div align="center"><font face="Optima" size=4px color=white >NOMBRE</font></div></th>
			<th width = "50%"><div align="center"><font face="Optima" size=4px color=white >APELLIDO</font></div></th>
		</tr>
	</thead>

<tbody>

<?php
while (oci_fetch($unir2)) {
?>
<tr>
<td width = "50%"><div align="center"><font face="Optima" size=4px color=black ><?php echo oci_result($unir2, 'NOMBRE'); ?></font></div></td>
<td width = "50%"><div align="center"><font face="Optima" size=4px color=black ><?php echo oci_result($unir2, 'APELLIDO'); ?></font></div></td>
</tr>
<?php
}
oci_free_statement($unir2);
oci_close($conn2);
?>
</tbody>
</table>
</body>
</html>