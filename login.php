<?php
	include_once'conexion.php';
	$e_mail= $_POST['email'];
	$contra= $_POST['pass'];
	$query= "CALL sp_user_login('$e_mail', '$contra');";
	$loginQuery= mysqli_query($conexion, $query);
	$loginQuery_check= mysqli_num_rows($loginQuery);
	$_SESSION['user'] = $e_mail;
	$_SESSION['pass'] = $contra;
	$varsesion = $_SESSION['user'];
	if ($loginQuery_check == 1) {
		if($varsesion == null || $varsesion = '') {
		echo 'No has iniciado sesion';
		die();
	}else{
		$message = "Se ha verificado su informacion.";
		$_SESSION['user'] = $e_mail;
		$_SESSION['pass'] = $contra;
		echo "<script type='text/javascript'>
		alert('$message');
		</script>";
		$varsesion = $_SESSION['user'];
		header("location: usuario.php");
		}
		
	}

?>