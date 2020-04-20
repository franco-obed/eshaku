<?php
include('conexion.php');
session_start();
$user_check=$_SESSION['login_user'];
$ses_sql=mysqli_query($conexion, "select nom_usuario from usuario where correo='$user_check';");
$row=mysqli_fetch_array($ses_sql, MYSQLI_ASSOC);
$loggedin_session=$row['nom_usuario'];
if(!isset($loggedin_session) || $loggedin_session==NULL) {
	echo "Go back";
	header("Location: index.php");
	}
?>