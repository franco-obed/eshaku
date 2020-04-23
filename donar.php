<?php
  include_once 'conexion.php'; 
  $e_mail= $_SESSION['user'];
  $contra= $_SESSION['pass'];
  $query4Id = mysqli_query($conexion, "SELECT id_usuario FROM usuario WHERE correo = '$e_mail';");
  $arrayUserId = mysqli_fetch_assoc($query4Id);
  $userId = $arrayUserId['id_usuario'];

?>

<!DOCTYPE html>

<html lang="es">
<head>
	<title>sube tus archivos</title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="donar.css">
</head>
<body>
	<nav class="nav">
		<img src="encabezado.png" width="350" height="85">
			<ul id="menu">
				<li><a href="INDEX.php"><h3>Inicio</h3></a></li>
				<li><a href="usuario.php"><h3>Usuario</h3></a></li>
				<li><a href="cerrar_sesion.php"><h3>Cerrar Sesion</h3></a></li>
			</ul>
		
	</nav>
	<br><br>

	<div class="cajon1">
		<form method="post" action="post_descr.php" enctype="multipart/form-data">
			<center><h1 id="encabezado">¿Que quieres Donar?</h1></center>
			<br>

			<div class="cajon2">

				<input class="boton1" type="file" name="archivo" />
			    <br>
			    <input type="id" placeholder="titulo de publicacion" name="post_title">
			    <br>
			    <input type="id" placeholder="descripcion" name="post_descr">
			    <br>
			    
			    <br>
			    <input class="boton2" type="submit" value="Subir Archivo" name="boton" />
				
			</div>
			
		</form>
		<br>
		<br>


		<form id="form2" method="POST" onsubmit="return display()" action="post_prenda.php">
			<center><h2 id="encabezado">Tipo de prenda</h2></center>
			<div class="cajon2">
				<select name="tipo">
					<option value="" disabled selected="">.. SELECCIONE PRENDA</option>
					<option value="zapatos">zapatos</option>
					<option value="playera">playera</option>
					<option value="camisa">camisa</option>
					<option value="uniforme">uniforme</option>
					<option value="abrigo">abrigo</option>
					<option value="pantalonera">pantalonera</option>
					<option value="pantalon">pantalon</option>
					<option value="tenis">tenis</option>
					
				</select>

			    <br>
			    <select name="genero">
					<option value="" disabled selected="">.. SELECCIONE GENERO</option>
					<option value="hombre">Hombre</option>
					<option value="mujer">Mujer</option>
					<option value="ninos">Nin@s</option>
				</select>
			    <br>
			    <select name="estado">
			    	<option value="" disabled selected= "">.. SELECCIONE ESTADO EN EL QUE ESTA LA PRENDA</option>
			    	<option value="usada">Usada</option>
			    	<option value="nueva">Nueva</option>
			    </select>
			    <br>
			    <select name="talla">
			    		<option value="" disabled selected="">.. SELECCIONE TALLA</option>
			    		<option value="pequena">Pequeña </option>
			    		<option value="mediana">Mediana </option>
			    		<option value="grande">Grande </option>
			    		<option value="extra grande">Extra Grande </option>
			    </select>
			    <br>
			    <input type="submit" name="submit1" value="Enviar" onclick="return display()">
				
			</div>
			
		</form>

	</div>

</body>

</html>