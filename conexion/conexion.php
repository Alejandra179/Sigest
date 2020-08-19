<?php
$user="root";
$passUser="";
$port="33065";


try {
    $conexion=new PDO("mysql:host=localhost;dbname=sigest01;port=$port", $user, $passUser
        ,array(PDO::MYSQL_ATTR_INIT_COMMAND=>"SET NAMES utf8"));

    $conexion->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
    
} catch(PDOException $e){
    die ("Fallo la conexion" . $e ->getMessage());
}
?>