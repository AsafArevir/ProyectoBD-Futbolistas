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
	<meta http-equiv="Content-Type" content="text/html;" charset="UTF-8" />
	<meta charset="utf-8"/>
	<title>Jugador</title>
</head>
<body>
	<button size=40px type="button" onclick="javascript:window.print()">Imprimir</button>
	<center><h1><font color=white>Jugadores por Equipo</font></h1></center>
 <form action="jugador.php" method="post">
 	<select name="opciones">
 		<option value="America"> America</option>
 		<option value="Atlas"> Atlas</option>
 		<option value="Toluca"> Toluca</option>
 		<option value="UANL"> UANL</option>
 		<option value="Leon"> Leon</option>
 		<option value="CruzAzul"> CruzAzul</option>
 		<option value="Monterrey"> Monterrey</option>
 		<option value="Mazatlan"> Mazatlan</option>
 		<option value="Guadalajara"> Guadalajara</option>
 		<option value="Puebla"> Puebla</option>
 		<option value="Santos"> Santos</option>
 		<option value="SanLuis"> San Luis</option>
 		<option value="Necaxa"> Necaxa</option>
 		<option value="UNAM"> UNAM</option>
 		<option value="Pachuca"> Pachuca</option>
 		<option value="Juarez"> Juarez</option>
 		<option value="Queretaro"> Queretaro</option>
 		<option value="Tijuana"> Tijuana</option>
 	</select><br><br>
 	<br><input type="submit" name='EJECUTAR' values="EJECUTAR"> 
</form>
<?php
	include('index.php');
	if (isset($_POST['EJECUTAR'])) {
		$opcione=$_POST['opciones'];

		echo "<fieldset><legend><h3>Consola</h3></legend>";
		switch ($opcione) {
			case 'America':
					include 'america.php';
				break;

			case 'Atlas':
					include 'atlas.php';
				break;

			case 'Toluca':
					include 'toluca.php';
				break;

			case 'UANL':
  					include 'uanl.php';
				break;
			
			case 'Leon':
  					include 'leon.php';
				break;

			case 'UANL':
  					include 'uanl.php';
				break;

			case 'CruzAzul':
  					include 'CruzAzul.php';
				break;

			case 'Monterrey':
  					include 'monterrey.php';
				break;

			case 'Mazatlan':
  					include 'mazatlan.php';
				break;

			case 'Guadalajara':
  					include 'chivas.php';
				break;

			case 'Puebla':
  					include 'puebla.php';
				break;

			case 'Santos':
  					include 'santos.php';
				break;

			case 'SanLuis':
  					include 'sanLuis.php';
				break;

			case 'Necaxa':
  					include 'necaxa.php';
				break;

			case 'UNAM':
  					include 'unam.php';
				break;

			case 'Pachuca':
  					include 'pachuca.php';
				break;

			case 'Juarez':
  					include 'juarez.php';
				break;

			case 'Queretaro':
  					include 'queretaro.php';
				break;

			case 'Tijuana':
  					include 'tijuana.php';
				break;

			default:
				
				break;
		}
		echo "</fieldset>";	
	
  	}

?>
</body>
</html>