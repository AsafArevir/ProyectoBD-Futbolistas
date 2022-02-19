<!DOCTYPE HTML>
<html>
<head>
	<style>
body {
  height: 1000px;
  background-image: url("https://image.freepik.com/vector-gratis/fondo-campo-futbol-estilo-degradado_23-2148995842.jpg");
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
	<title>Jornadas</title>
</head>
<body>

	<button size=40px type="button" onclick="javascript:window.print()">Imprimir</button>
 <center><h1><font color=white>JORNADAS</font></h1></center>
 <form action="Jornadas.php" method="post">
 	<select name="opciones">
 		<option value="Todas"> Todas</option>
 		<option value="Jornada_17"> Jornada_17</option>
 		<option value="Jornada_16"> Jornada_16</option>
 		<option value="Jornada_15"> Jornada_15</option>
 		<option value="Jornada_14"> Jornada_14</option>
 		<option value="Jornada_13"> Jornada_13</option>
 		<option value="Jornada_12"> Jornada_12</option>
 		<option value="Jornada_11"> Jornada_11</option>
 		<option value="Jornada_10"> Jornada_10</option>
 		<option value="Jornada_9"> Jornada_9</option>
 		<option value="Jornada_8"> Jornada_8</option>
 		<option value="Jornada_7"> Jornada_7</option>
 		<option value="Jornada_6"> Jornada_6</option>
 		<option value="Jornada_5"> Jornada_5</option>
 		<option value="Jornada_4"> Jornada_4</option>
 		<option value="Jornada_3"> Jornada_3</option>
 		<option value="Jornada_2"> Jornada_2</option>
 		<option value="Jornada_1"> Jornada_1</option>
 	</select><br>
 	<input type="submit" name='EJECUTAR' values="EJECUTAR"> 
</form>
<?php
	include('index.php');
	if (isset($_POST['EJECUTAR'])) {
		$opcione=$_POST['opciones'];

		switch ($opcione) {
			case 'Todas':
  					include "1.php";
  					include "2.php";
  					include "3.php";
  					include "4.php";
  					include "5.php";
  					include "6.php";
  					include "7.php";
  					include "8.php";
  					include "9.php";
  					include "10.php";
  					include "11.php";
  					include "12.php";
  					include "13.php";
  					include "14.php";
  					include "15.php";
  					include "16.php";
  					include "17.php";
				break;

			case 'Jornada_17':
					include "17.php";
				break;

			case 'Jornada_16':
					include "16.php";
				break;

			case 'Jornada_15':
  					include "15.php";
				break;

			case 'Jornada_14':
					include "14.php";
				break;

			case 'Jornada_13':
					include "13.php";
				break;

			case 'Jornada_12':
					include "12.php";
				break;

			case 'Jornada_11':
					include "11.php";
				break;

			case 'Jornada_10':
					include "10.php";
				break;
			
			case 'Jornada_9':
					include "9.php";
				break;

			case 'Jornada_8':
					include "8.php";
				break;

			case 'Jornada_7':
					include "7.php";
				break;

			case 'Jornada_6':
					include "6.php";
				break;

			case 'Jornada_5':
					include "5.php";
				break;

			case 'Jornada_4':
					include "4.php";
				break;

			case 'Jornada_3':
					include "3.php";
				break;

			case 'Jornada_2':
					include "2.php";
				break;

			case 'Jornada_1':
					include "1.php";
				break;

			default:
				
				break;
		}

	
  	}

?>
</body>
</html>