<?php
include_once ("conexion.php");
$busqueda = $_SESSION['busqueda'];
$resTipo= $_SESSION['resTipo'];
$resImagen= $_SESSION['resImagen'];
$resDescripcion= $_SESSION['resDescripcion'];
$resUsuario= $_SESSION['resUsuario'];
$resTitulo= $_SESSION['resTitulo'];
$resTelefono= $_SESSION['telefono'];
//$busqueda1 = $_SESSION['busqueda1'];
$resTipo1= $_SESSION['resTipo1'];
$resImagen1= $_SESSION['resImagen1'];
$resDescripcion1= $_SESSION['resDescripcion1'];
$resUsuario1= $_SESSION['resUsuario1'];
$resTitulo1= $_SESSION['resTitulo1'];
$resTelefono1= $_SESSION['telefono1'];


//$busqueda2 = $_SESSION['busqueda2'];
$resTipo2= $_SESSION['resTipo2'];
$resImagen2= $_SESSION['resImagen2'];
$resDescripcion2= $_SESSION['resDescripcion2'];
$resUsuario2= $_SESSION['resUsuario2'];
$resTitulo2= $_SESSION['resTitulo2'];
$resTelefono2= $_SESSION['telefono2'];


//$busqueda3 = $_SESSION['busqueda3'];
$resTipo3= $_SESSION['resTipo3'];
$resImagen3= $_SESSION['resImagen3'];
$resDescripcion3= $_SESSION['resDescripcion3'];
$resUsuario3= $_SESSION['resUsuario3'];
$resTitulo3= $_SESSION['resTitulo3'];
$resTelefono3= $_SESSION['telefono3'];


//$busqueda4 = $_SESSION['busqueda4'];
$resTipo4= $_SESSION['resTipo4'];
$resImagen4= $_SESSION['resImagen4'];
$resDescripcion4= $_SESSION['resDescripcion4'];
$resUsuario4= $_SESSION['resUsuario4'];
$resTitulo4= $_SESSION['resTitulo4'];
$resTelefono4= $_SESSION['telefono4'];


//$busqueda5 = $_SESSION['busqueda5'];
$resTipo5= $_SESSION['resTipo5'];
$resImagen5= $_SESSION['resImagen5'];
$resDescripcion5= $_SESSION['resDescripcion5'];
$resUsuario5= $_SESSION['resUsuario5'];
$resTitulo5= $_SESSION['resTitulo5'];
$resTelefono5= $_SESSION['telefono5'];



$resultBusqueda= $_SESSION ['busqueda'];

?>
<!DOCTYPE html>
<html>
<head>
	<title>Links</title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="resultBusqueda.css">

</head>
<body>
	<nav class="nav">
		<img src="encabezado.png" width="350" height="85">
			<ul id="menu">
				<li><a href="INDEX.php"><h3>Inicio</h3></a></li>
				<li><a href="USUARIO.PHP">Usuario<h3></h3></a></li>
				<li><a href="cerrar_sesion.php"><h3>Cerrar Sesion</h3></a></li>
			</ul>
		
	</nav>

	<div class="cuerpo">
		<center><input id="buscador" type="search" placeholder="Buscar aqui">
				<a href="#" id="button">Buscar</center>
		<br>

		<div class="cuerpo2">
			<br>

			<center> <?php echo "<a href=''> <H2>$resTitulo </H2></a>" ?>
			<?php echo "<p>$resTipo | $resDescripcion | $resUsuario | Contacto: $resTelefono </p>"?></center>
			<br>
			<center> <?php echo "<a href=''> <H2>$resTitulo1 </H2></a>" ?>
			<?php echo "<p>$resTipo1 | $resDescripcion1 | $resUsuario1 | Contacto: $resTelefono1 </p>"?></center>
			<br>
			<center> <?php echo "<a href=''> <H2>$resTitulo2 </H2></a>" ?>
			<?php echo "<p>$resTipo2 | $resDescripcion2 | $resUsuario2 | Contacto: $resTelefono2 </p>"?></center>
			<br>
			<center> <?php echo "<a href=''> <H2>$resTitulo3 </H2></a>" ?>
			<?php echo "<p>$resTipo3 | $resDescripcion3 | $resUsuario3 | Contacto: $resTelefono3 </p>"?></center>
			<br>
			<center> <?php echo "<a href=''> <H2>$resTitulo4 </H2></a>" ?>
			<?php echo "<p>$resTipo4 | $resDescripcion4 | $resUsuario4 | Contacto: $resTelefono4 </p>"?></center>
			<br>
			<center><?php echo "<a href=''> <H2>$resTitulo5 </H2></a>" ?>
			<?php echo "<p>$resTipo5 | $resDescripcion5 | $resUsuario5 | Contacto: $resTelefono5 </p>"?></center>
			<br>


			
		</div>

	

		
	</div>



</body>
</html>
