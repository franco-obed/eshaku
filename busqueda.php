<?php
include_once("conexion.php");
$busqueda = $_POST['busqueda'];
$_SESSION ['busqueda'] = $busqueda;
echo "<script type='text/javascript'>
window.location.href='resultBusqueda.html';
</script>"; 
?>