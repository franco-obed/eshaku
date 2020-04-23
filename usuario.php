<?php
	include_once 'conexion.php';
	$e_mail= $_SESSION['user'];
	$contra= $_SESSION['pass'];
	$query= "SELECT * FROM usuario WHERE correo = '$e_mail' AND contrasena = sha('$contra');";
	$loginQuery= mysqli_query($conexion, $query);
	$loginQuery_check= mysqli_num_rows($loginQuery);
	$result= mysqli_fetch_array($loginQuery);
	//if ($loginQuery_check > 0) {
	//	$result= mysqli_fetch_array($loginQuery);

	//}
?>

<!DOCTYPE html>
<html>
<head>
	<title>Usuario</title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="USUARIO.CSS">
</head>
<body>
	<div id="cajon1">
		<div id="cajon2">
			<div id="cajon8">
				<center><div><h2>¿Que siginifica "eshaku"?</h2></div><br /></center>
				<center><h3>Es una ligera inclinacion de la cabeza, una reverencia.<br />
				<br> Así, esta nos puede servir para saludar a un amigo, a un compañero de trabajo, para agradecer algo, para pedir disculpas o para solicitar algo difícil de conseguir.</h3></center>
				
			</div>

			<div id="cajon9">
				<center><h2>googleMaps</h2></center>
				<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d671151.1465577888!2d-107.05603935746547!3d29.220257984015493!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x86ea449d5d484033%3A0xb7f1a7a706dd1d7b!2sChihuahua%2C%20Chih.!5e0!3m2!1ses-419!2smx!4v1586914851043!5m2!1ses-419!2smx" frameborder="0" height="320" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
				
			</div>
			
		</div>
		<div id="cajon3">
			<ul id="menu">
				<li><a href="INDEX.php"><h2>Inicio</h2></a></li>
				<li><a href=""><h2>Usuario</h2></a></li>
				<li><a href="post.php"><h2>Publicacion</h2></a></li>
			</ul>
			<img id="img" src="encabezado.png">
			<div id="title"><h1></h1></div>
			
		</div>

		<div id="cajon4">
			<div id="cajon5">
				<div id="cajon6Informacion">
					<nav><center><h1> Detalles:</h1></center></nav>
					<center>        <table>
                    <tr>                
                     <td>Nombre:</td><td><?php echo $result['nom_usuario']; ?></td>   
                    </tr>
                    <tr>                
                     <td>Telefono:</td><td><?php echo $result['telefono']; ?></td> 
                    </tr> 
                    <tr>
                        <td>Dirección:</td><td><?php echo $result['direccion']; ?></td>
                    </tr>
                    <tr>
                        <td>Correo:</td><td><?php echo $result['correo']; ?></td> 
                    </tr>        
        </table> </center>
				
			    </div>

			    <div id="cajon7usuario">
			    	<center><img src="C:\xampp\htdocs\integradora\usuarios\img\isaac.jpg" width="320" height="320" id="imagen"></center>
			    	
			    </div>
			</div>
		</div>
		
	</div>

</body>
</html>
