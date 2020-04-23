<?php
include_once('conexion.php');
session_destroy();
header("location: index.php");

?>