<?php
include "../../conexion/conexion.php";

$id_usuario=$_POST['id_usuario'];

$sql="DELETE FROM `usuarios` WHERE id_usuario=:id_usuario";
$stmt=$conexion->prepare($sql);
$stmt->bindParam(":id_usuario",$id_usuario);
if($stmt->execute()){
    echo '1';
}else{
    echo '0';
}
