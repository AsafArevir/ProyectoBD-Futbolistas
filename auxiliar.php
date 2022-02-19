<?php
include('index.php');
$conn= oci_connect($user,$pass,$host);
$sql = "SELECT * FROM  auxiliar";
$unir = oci_parse($conn,$sql);
oci_execute($unir);



?>



<!DOCTYPE html>
<html>
<head>
	<style type="text/css">
		body {
  height: 1000px;
  background-image: url("https://infovallefertil.com/download/multimedia.miniatura.b7fee6d486c5a7de.65356464386465383237623563643035623764366238313830316533376261375f6d696e6961747572612e6a7067.jpg");
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
 <center><h1><font color=black>Auxiliares</font></h1></center>
 <button size=40px type="button" onclick="javascript:window.print()">Imprimir</button>
 <table border=5 width=800px align=center>

 	<thead>
		<tr>

			<th width = "50%"><div align="center"><font face="Optima" size=4px color=white >ID_AUXILIAR</font></div></th>
			<th width = "50%"><div align="center"><font face="Optima" size=4px color=white >ID_EQUIPO</font></div></th>
			<th width = "50%"><div align="center"><font face="Optima" size=4px color=white >NOMBRE</font></div></th>
			<th width = "50%"><div align="center"><font face="Optima" size=4px color=white >APELLIDO</font></div></th>
		</tr>
	</thead>



<tbody>



<?php
while (oci_fetch($unir)) {
?>
<tr>
<td width = "50%"><div align="center"><font face="Optima" size=4px color=black ><?php echo oci_result($unir, 'ID_AUXILIAR'); ?></font></div></td>
<td width = "50%"><div align="center"><font face="Optima" size=4px color=black ><?php echo oci_result($unir, 'ID_EQUIPO'); ?></font></div></td>
<td width = "50%"><div align="center"><font face="Optima" size=4px color=black ><?php echo oci_result($unir, 'NOMBRE'); ?></font></div></td>
<td width = "50%"><div align="center"><font face="Optima" size=4px color=black ><?php echo oci_result($unir, 'APELLIDO'); ?></font></div></td>
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