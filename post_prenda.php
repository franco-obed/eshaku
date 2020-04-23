<?php
include_once('conexion.php');
$e_mail= $_SESSION['user'];
$contra= $_SESSION['pass'];
$tipo = $_POST['tipo'];
$genero = $_POST['genero'];
$estado = $_POST['estado'];
$talla = $_POST['talla'];
$query4Id = mysqli_query($conexion, "SELECT id_usuario FROM usuario WHERE correo = '$e_mail';");
$arrayUserId = mysqli_fetch_assoc($query4Id);
$userId = $arrayUserId['id_usuario'];
$postTitulo = $_SESSION['titulo'];
$postDescr = $_SESSION['descr'];


$queryPrenda = "UPDATE prenda SET tipo = '$tipo', estado = '$estado', talla = '$talla', genero = '$genero', fecha = NOW() WHERE id_usuario = '$userId' AND titulo = '$postTitulo' AND descripcion = '$postDescr';";
$store_data = mysqli_query($conexion, $queryPrenda);
$postIdQuery = mysqli_query($conexion, "SELECT id FROM prenda WHERE id_usuario = '$userId' AND titulo = '$postTitulo' AND descripcion = '$postDescr';");
$lastPostId = mysqli_fetch_assoc($postIdQuery);
$_SESSION['last_post'] = $lastPostId['id'];
  			echo "<script type='text/javascript'>
			alert('Se ha subido exitosamente');
			window.location.href='post.php';
			</script>";
?>