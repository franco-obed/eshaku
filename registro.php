<?php
include_once'conexion.php';
?>

<?php
	$full_nam = $_POST['nom_completo'];
	$e_mail = $_POST['correo_elec'];
	$passwd = $_POST['contras'];
	$ph_num = $_POST['num_tel'];
	$addrs = $_POST['direcc'];

	$register_query = "CALL sp_register_user('$full_nam', '$passwd', '$addrs', '$ph_num', '$e_mail');";
	mysqli_query($conexion, $register_query);
	$message = "Se ha registrado exitosamente";
	echo "<script type='text/javascript'>
	alert('$message');
	location='loginUsuario.html';
	</script>";
?>