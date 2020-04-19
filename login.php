<?php
	include_once'conexion.php';
?>

<?php
	$e_mail= $_POST['email'];
	$contra= $_POST['pass'];
	$query= "CALL sp_user_login('$e_mail', '$contra');";
	$loginQuery= mysqli_query($conexion, $query);
	$loginQuery_check= mysqli_num_rows($loginQuery);
	if ($loginQuery_check > 0) {
		$message = "Se ha verificado su informacion.";
		echo "<script type='text/javascript'>
		alert('$message');
		location='USUARIO.HTML';
		</script>";
	}

?>