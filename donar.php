<?php
  include_once 'conexion.php'; 


  $formatos = array('.jpg', '.png');
  if (isset($_POST['boton'])) {
  	$nombreArchivo = $_FILES['archivo']['name'];
  	$nombreTmpArchivo = $_FILES['archivo']['tmp_name'];
  	$ext = substr($nombreArchivo, strrpos($nombreArchivo, '.'));
  	if (in_array($ext, $formatos)){
  		if (move_uploaded_file($nombreTmpArchivo, "archivos/$nombreArchivo")){
  			echo "<script type='text/javascript'>
			alert('Se ha subido exitosamente, ahora, introduzca la informacion de la prenda');
			</script>";
  			}else{
  				echo "ocurrio un Error";

  			}


  	}else{
  		echo "Lo sentimos, no se permite este archivo";

  	}
  }

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
				<li><a href="INDEX.html"><h3>Inicio</h3></a></li>
				<li><a href=""><h3>Usuario</h3></a></li>
				<li><a href=""><h3>Cerrar Sesion</h3></a></li>
			</ul>
		
	</nav>
	<br><br>

	<div class="cajon1">
		<form method="post" action="" enctype="multipart/form-data">
			<center><h1 id="encabezado">¿Que quieres Donar?</h1></center>
			<br>

			<div class="cajon2">

				<input class="boton1" type="file" name="archivo" />
			    <br>
			    <input type="id" placeholder="titulo de publicacion" name="#">
			    <br>
			    <input type="id" placeholder="descripcion" name="#">
			    <br>
			    
			    <br>
			    <input class="boton2" type="submit" value="Subir Archivo" name="boton" />
				
			</div>
			
		</form>
		<br>
		<br>


		<form id="form2" method="POST" onsubmit="return display()" action="post">
			<center><h2 id="encabezado">Tipo de prenda</h2></center>
			<div class="cajon2">
				<select name="tipo">
					<option value="" disabled selected="">.. SELECCIONE PRENDA</option>
					<option value="#">zapatos</option>
					<option value="#">playera</option>
					<option value="#">camisa</option>
					<option value="#">uniforme</option>
					<option value="#">abrigo</option>
					<option value="#">pantalonera</option>
					<option value="#">pantalon</option>
					<option value="#">tenis</option>
					
				</select>

			    <br>
			    <select name="genero">
					<option value="" disabled selected="">.. SELECCIONE GENERO</option>
					<option value="#">Hombre</option>
					<option value="#">Mujer</option>
					<option value="#">Nin@s</option>
				</select>
			    <br>
			    <input type="text" placeholder="Estado de la prenda" name="#">
			    <br>
			    <select name="talla">
			    		<option value="" disabled selected="">.. SELECCIONE TALLA</option>
			    		<option value="#">Pequeña </option>
			    		<option value="#">Mediana </option>
			    		<option value="#">Grande </option>
			    		<option value="#">Extra Grande </option>
			    <br>
			    <input type="submit" name="submit1" value="Enviar" onclick="return display()">
				
			</div>
			
		</form>

	</div>

</body>

</html>