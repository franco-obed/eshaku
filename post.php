<?php
include_once('conexion.php');
$e_mail= $_SESSION['user'];
$contra= $_SESSION['pass'];
$lastPostId = $_SESSION['last_post'];
$lastPostTableQ = mysqli_query($conexion, "SELECT titulo, fecha, tipo, descripcion, estado, talla, genero, telefono FROM prenda INNER JOIN usuario WHERE id = '$lastPostId';");
$tableLastPost = mysqli_fetch_assoc($lastPostTableQ);
$postPicQ = mysqli_query($conexion, "SELECT imagen from prenda WHERE id = '$lastPostId';");
$postPicRow = mysqli_fetch_assoc($postPicQ);
$postPicRoute = $postPicRow['imagen'];
$postPicRoute = 'archivos/'.$postPicRoute;

//$query= "SELECT * FROM prenda ORDER BY fecha DESC";
//$post_query= mysqli_query($conexion, $query);
//$result= mysqli_fetch_array($post_query);
?>
<!DOCTYPE html>

<html>
<head>
	<title>post</title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="post.css">
</head>
<body>
	<nav class="nav">
		<img src="encabezado.png" width="350" height="85">
			<ul id="menu">
				<li><a href="INDEX.php"><h3>Inicio</h3></a></li>
				<li><a href="Usuario.php"><h3>Usuario</h3></a></li>
				<li><a href="cerrar_sesion.php" ><h3>Cerrar Sesion</h3></a></li>
			</ul>
		
	</nav>
	<br><br>

	<div class="cajon">
		<section class="post-list">
		<div class="content">
			<article class="post">
				<div class="post-header">
					<nav><center><h1> Titulo: <?php echo $tableLastPost['titulo']; ?> </h1> <h1> Fecha: <?php echo $tableLastPost['fecha']; ?> </h1></center></nav>
					<div class="post-img-1">
						<?php echo "<img src='$postPicRoute' width='320' height='320' id='imagen'>" ?>
					</div>
				</div>
				<div class="post-body">
					
					<center>        <table>
                    <tr>                
                     <td>Prenda: </td><td><?php echo $tableLastPost['tipo']; ?></td>   
                    </tr>
                    <tr>                
                     <td>Descripcion: </td><td><?php echo $tableLastPost['descripcion']; ?></td> 
                    </tr> 
                    <tr>
                        <td>Estado: </td><td><?php echo $tableLastPost['estado']; ?></td>
                    </tr>
                    <tr>
                        <td>Talla: </td><td><?php echo $tableLastPost['talla']; ?></td> 
                    </tr>  
                    <tr>
                        <td>Genero: </td><td><?php echo $tableLastPost['genero']; ?></td> 
                    </tr>
                    <tr>
                        <td>Contacto	: </td><td><?php echo $tableLastPost['telefono']; ?></td> 
                    </tr>
			</article>
		</div>

		</div>
		
	</section>
		
	</div>




	

</body>

</body>
</html>