<?php
  include_once 'conexion.php';
  session_start();
?>

<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="utf-8">
  <title> e-Shaku</title>
  <meta name="viewport" content="width=device-width, user-scalable=yes, initial-scale=1.0, maximum-scale=3.0, minimum-scale=1.0">
  <script src='https://kit.fontawesome.com/a076d05399.js'></script>
  <link rel="stylesheet" href="estilos.css">

</head>
<body>
  <form class="formulario" method="POST" action="registro.php">
    
    <h2> Regístrate</h2>
    <div class="contenedor">
    <div class="input-contenedor">
      <i class='fas fa-id-badge icon' style='font-size:24px'></i>
      <input type="text" placeholder="Nombre completo" name="nom_completo">
    
    </div>
    <div class="input-contenedor">
      <i class='far fa-envelope icon' style='font-size:24px'></i>
      <input type="text" placeholder="Correo electrónico" name="correo_elec">
    </div>
    <div class="input-contenedor">
      <i class='fas fa-key icon' style='font-size:24px'></i>
      <input type="password" placeholder="Contraseña" name="contras">
    </div>
    <div class="input-contenedor">
      <i class='fas fa-mobile-alt icon' style='font-size:24px'></i>
      <input type="text" placeholder="Número de teléfono" class="input-100"required name="num_tel">
      </div>
      <div class="input-contenedor">
         <i class='fas fa-map-marker-alt icon' style='font-size:24px'></i>
      <input type="text" placeholder="Dirección" name="direcc">
      </div>
    <input type="submit" value="Registrarse" class="button">

    <p> Al registrarte aceptas las condiciones de uso y política de privacidad de esta pagina</p>
    <p> ¿Ya tienes cuenta de esta página? <a class="link" href="loginUsuario.php">iniciar Sesión</a></p>
    </div>
  </form>
</body>
</html>