<?php
include_once('conexion.php');
$e_mail= $_SESSION['user'];
$contra= $_SESSION['pass'];
$tipo = $_POST['tipo'];
$genero = $_POST['genero'];
$estado = $_POST['estado'];
$talla = $_POST['talla'];
//$tipo = $_POST['tipo'];
//$tipo = $_POST['tipo'];
$queryPrenda = "INSERT INTO prenda (tipo, estado, talla, genero) VALUES ('$tipo', '$estado', '$talla', '$genero');";
$store_data = mysqli_query($conexion, $queryPrenda);
  			echo "<script type='text/javascript'>
			alert('Se ha subido exitosamente');
			</script>";
			header("location: post.php");
?>