<?php 
include('index.php');
$conn= oci_connect($user,$pass,$host);
$sql = "SELECT NOMBRE, APELLIDO, NO_CAMISETA, POSICION, APODO FROM JUGADOR WHERE ID_EQUIPO=34";
$unir = oci_parse($conn,$sql);
oci_execute($unir);
?>

<?php 
include('index.php');
$conn1= oci_connect($user,$pass,$host);
$sql1 = "SELECT * FROM DIRECTOR WHERE id_director=103";
$unir1 = oci_parse($conn1,$sql1);
oci_execute($unir1);
?>

<?php
include('index.php');
$conn2= oci_connect($user,$pass,$host);
$sql2 = "SELECT * FROM  auxiliar WHERE ID_EQUIPO=34";
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

<tr><td width = "50%" bgcolor="ffffff"><div align="center"><img src="nahuel.jpg" width=150px><font face="Optima" size=4px color=black><p>#1</p>Nahuel Guzman<p>paton</p></font></div></td></tr>
<tr><td width = "50%" bgcolor="ffffff"><div align="center"><img src="carlos.jpg" width=130px><font face="Optima" size=4px color=black><p>#3</p>Carlos Salcedo<p></p><p>titan</p></font></div></td></tr>
<tr><td width = "50%" bgcolor="ffffff"><div align="center"><img src="hugoa.jpg" width=180px><font face="Optima" size=4px color=black><p>#4</p>Hugo Ayala<p></p><p>raton</p></font></div></td></tr>
<tr><td width = "50%" bgcolor="ffffff"><div align="center"><img src="jesusdu.jpg" width=180px><font face="Optima" size=4px color=black><p>#29</p>Jesus Dueñas<p></p><p>pollo</p></font></div></td></tr>
<tr><td width = "50%" bgcolor="ffffff"><div align="center"><img src="luisro.jpg" width=180px><font face="Optima" size=4px color=black><p>#28</p>Luis Rodriguez<p></p><p>chaka</p></font></div></td></tr>
<tr><td width = "50%" bgcolor="ffffff"><div align="center"><img src="rafaelc.jpg" width=180px><font face="Optima" size=4px color=black><p>#5</p>Rafael Carioca<p></p><p>carioca</p></font></div></td></tr>
<tr><td width = "50%" bgcolor="ffffff"><div align="center"><img src="guidop.jpg" width=180px><font face="Optima" size=4px color=black><p>#19</p>Guido Pizarro<p></p><p>conde</p></font></div></td></tr>
<tr><td width = "50%" bgcolor="ffffff"><div align="center"><img src="floriant.jpg" width=180px><font face="Optima" size=4px color=black><p>#26</p>Florian Thauvin<p></p><p>Rough Diamond</p></font></div></td></tr>
<tr><td width = "50%" bgcolor="ffffff"><div align="center"><img src="juanpv.jpg" width=180px><font face="Optima" size=4px color=black><p>#6</p>Juan Pablo Vigon<p></p><p>Vigon</p></font></div></td></tr>
<tr><td width = "50%" bgcolor="ffffff"><div align="center"><img src="luisqu.jpg" width=150px ><font face="Optima" size=4px color=black><p>#23</p>Luis Quiñones<p></p><p>moreno</p></font></div></td></tr>
<tr><td width = "50%" bgcolor="ffffff"><div align="center"><img src="andre-pie.jpg" width=150px ><font face="Optima" size=4px color=black><p>#10</p>Andre-Pierre Gignac<p></p><p>Bomboro dede</p></font></div></td></tr>

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