<?php
$hostname = "localhost";
$username = "id22026208_user";
$password = "Quicktalk2000.";
$dbname = "id22026208_chat";

if (session_status() == PHP_SESSION_NONE) {
	session_start();
}
$conn = mysqli_connect($hostname, $username, $password, $dbname);
if ($conn->connect_error) {
	die("Conexión fallida: " . $conn->connect_error);
}

// Verificar si las variables de sesión están definidas antes de acceder a ellas
$nombre = isset($_SESSION["txtusuario"]) ? $_SESSION["txtusuario"] : "";
$pass = isset($_SESSION["txtpassword"]) ? $_SESSION["txtpassword"] : "";
?>