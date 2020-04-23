<?php
  include_once 'conexion.php'; 
  $e_mail= $_SESSION['user'];
  $contra= $_SESSION['pass'];
  $query4Id = mysqli_query($conexion, "SELECT id_usuario FROM usuario WHERE correo = '$e_mail';");
  $arrayUserId = mysqli_fetch_assoc($query4Id);
  $userId = $arrayUserId['id_usuario'];
  $formatos = array('.jpg', '.png');
  if (isset($_POST['boton'])) {
  	$nombreArchivo = $_FILES['archivo']['name'];
  	$nombreTmpArchivo = $_FILES['archivo']['tmp_name'];
  	$ext = substr($nombreArchivo, strrpos($nombreArchivo, '.'));
  	if (in_array($ext, $formatos)){
  		if (move_uploaded_file($nombreTmpArchivo, "archivos/$nombreArchivo")){
  			$postTitulo = $_POST['post_title'];
  			$postDescr = $_POST['post_descr'];
  			$_SESSION['titulo'] = $postTitulo;
  			$_SESSION['descr'] = $postDescr;
  			$queryInsert = mysqli_query($conexion, "INSERT INTO prenda (titulo, imagen, descripcion, id_usuario) VALUES ('$postTitulo', '$nombreArchivo', '$postDescr', '$userId');");
  			echo "<script type='text/javascript'>
			alert('Se ha subido exitosamente, ahora, introduzca la informacion de la prenda');
			window.location.href='donar.php';
			</script>";
		}else {
			echo "ocurrio un Error";
		}
	}else {
		echo "Lo sentimos, no se permite este archivo";
	}
}


    		//echo "<script type='text/javascript'>
			//alert('Se ha subido exitosamente');
			//</script>";
			//header("location: donar.php");

?>