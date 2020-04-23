<?php
include_once('conexion.php');
$recentPostsQ = mysqli_query($conexion, "SELECT titulo FROM v_recent_posts;");
$recentPostsRows = mysqli_fetch_assoc($recentPostsQ);
$recPost1 = $recentPostsRows['titulo'];
$recentPostsRows = mysqli_fetch_assoc($recentPostsQ);
$recPost2 = $recentPostsRows['titulo'];
$recentPostsRows = mysqli_fetch_assoc($recentPostsQ);
$recPost3 = $recentPostsRows['titulo'];


//$recentPostsRows = mysqli_fetch_array($recentPostsQ, MYSQLI_BOTH);
$recentPostsPicQ = mysqli_query($conexion, "SELECT * FROM v_show_post_pic;");
while($line = mysqli_fetch_array($recentPostsPicQ, MYSQLI_ASSOC)){
    $recentPostsPicRows[] = $line;
}
//$recentPostsPicRows = mysqli_fetch_array($recentPostsPicQ);




$recPostPic1 = 'archivos/'.implode($recentPostsPicRows[0]);
$recPostPic2 = 'archivos/'.implode($recentPostsPicRows[1]);
$recPostPic3 = 'archivos/'.implode($recentPostsPicRows[2]);
//$recPostFoto1 = $recentPostsRows[0]['imagen'];
//$recPostPicRoute = 'archivos/'.'$recPostFoto1';
?>
<!DOCTYPE html>
<html>
<head>
	<title>Principal</title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="estilo.css">
</head>
<body>
	<div id="cajon1">
		<div id="cajon2">
			<div id="cajon5">
				<center><h2>CATEGORIAS</h2></center>
				<center><div id="menu2">
					<center><ul>
						<li id="item"><a href="#"><h3>Masculino</h3></a>

							<ul id="desple">
								<li><a href="#"><h3>playeras</h3></a></li>
								<li><a href="#"><h3>camisas</h3></a></li>
								<li><a href="#"><h3>zapatos</h3></a></li>
								<li><a href="#"><h3>uniformes</h3></a></li>
								<li><a href="#"><h3>pantaloneras</h3></a></li>
								<li><a href="#"><h3>abrigos</h3></a></li>
								<li><a href="#"><h3>tenis</h3></a></li>
							</ul>
						</li>
						<li id="item"><a href="#"><h3>Femenino</h3></a>
							<ul id="desple">
								<li><a href="#"><h3>playeras</h3></a></li>
								<li><a href="#"><h3>camisas</h3></a></li>
								<li><a href="#"><h3>zapatos</h3></a></li>
								<li><a href="#"><h3>uniformes</h3></a></li>
								<li><a href="#"><h3>pantaloneras</h3></a></li>
								<li><a href="#"><h3>abrigos</h3></a></li>
								<li><a href="#"><h3>tenis</h3></a></li>

							</ul>
						</li>
						<li id="item"><a href="#"><h3>Niñ@</h3></a>
							<ul id="desple">
								<li><a href="#"><h3>playeras</h3></a></li>
								<li><a href="#"><h3>camisas</h3></a></li>
								<li><a href="#"><h3>zapatos</h3></a></li>
								<li><a href="#"><h3>uniformes</h3></a></li>
								<li><a href="#"><h3>pantaloneras</h3></a></li>
								<li><a href="#"><h3>abrigos</h3></a></li>
								<li><a href="#"><h3>tenis</h3></a></li>
								
							</ul>

						</li>
						
					</ul></center>
				</div></center>


			</div>

			<div id="cajon7">
				<center><div><h2>¿Que siginifica "eshaku"?</h2></div><br /></center>
				<center><h3>Es una ligera inclinacion de la cabeza, una reverencia.<br />
				<br> Así, esta nos puede servir para saludar a un amigo, a un compañero de trabajo, para agradecer algo, para pedir disculpas o para solicitar algo difícil de conseguir.</h3></center>
				
			</div>

		</div>

		<div id="cajon3">
			<ul id="menu">
				<li><a href="#"><h2>Inicio</h2></a></li>
				<li><a href="USUARIO.php"><h2>Usuario</h2></a></li>
				<li><a href="loginUsuario.php"><h2>inicio sesion</h2></a></li>
				<li><a href="registroUsuario.php"><h2>Registro</h2></a></li>
			</ul>
			<img id="img" src="encabezado.png">
			<div id="title"><h1></h1></div>
			
		</div>

		<div id="cajon4">
			<div id="cajon6">
				<form class="formulario" action="busqueda.php" method="POST">

				<center><input id="buscador" type="search" placeholder="Buscar aqui"> </center>
				<button class="button" name="busqueda" type="submit"> Buscar </button>
			</form>

				 <a href="donar.php" class="button">Donar</a></center>    
			</div>
			<center><h1>Recientes</h1></center>

			<div id="imagen1">
				<center> <?php echo "<img src='$recPostPic1' width='320' height='320' id='imagen'>" ?> </center>
				<center> <?php echo "<h1 class='tituloPost'> Info: $recPost1 </h1>"?> </center>

			</div>

			<center> 
				<div id="imagen2">
				<center> <?php echo "<img src='$recPostPic2' width='320' height='320' id='imagen'>" ?> </center>
				<center> <?php echo "<h1 class='tituloPost'> Info: $recPost2 </h1>"?> </center>
			</div>
			</center>

			<div id="imagen3">
				<center> <?php echo "<img src='$recPostPic3' width='320' height='320' id='imagen'>" ?> </center>
				<center> <?php echo "<h1 class='tituloPost'> Info: $recPost3 </h1>"?> </center>
			</div>
		</div>


			


		</div>

		
	</div>


</body>
</html>
