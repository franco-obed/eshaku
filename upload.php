 <?php 
    include_once 'conexion.php';
    $e_mail= $_SESSION['user'];
    $contra= $_SESSION['pass'];
    $query4Id = mysqli_query($conexion, "SELECT id_usuario FROM usuario WHERE correo = '$e_mail';");
    $arrayUserId = mysqli_fetch_assoc($query4Id);
    $userId = $arrayUserId['id_usuario'];
    $formatos = array('.jpg', '.png');

    if (isset($_POST['boton'])) {
    $nombreArchivo = $_FILES['archivoSubir']['name'];
    $nombreTmpArchivo = $_FILES['archivoSubir']['tmp_name'];
    $ext = substr($nombreArchivo, strrpos($nombreArchivo, '.'));
    if (in_array($ext, $formatos)){
        if (move_uploaded_file($nombreTmpArchivo, "archivos/$nombreArchivo")){
            mysqli_query($conexion, "UPDATE usuario SET foto = '$nombreArchivo' WHERE correo = '$e_mail';");
            echo "<script type='text/javascript'>
            alert('Se ha actualizado su perfil');
            window.location.href='usuario.php';
            </script>";
        }else {
            echo "ocurrio un Error";
        }
    }else {
        echo "Lo sentimos, no se permite este archivo";
    }
}