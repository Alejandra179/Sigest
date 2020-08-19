<?php
	session_start();
	define('ADMIN',1);
	define('PROFESOR',2);
	define('ALUMNO',3);
	if(!isset($_SESSION['usuario'])){
		header('Location:../index.php');
	}    
	include "../template/head.php";
	include "../template/nav.php";
	include "../template/notif.php";
	
	
	

?>

