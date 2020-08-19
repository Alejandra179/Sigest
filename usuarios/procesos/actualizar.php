<?php
include "../../conexion/conexion.php";

$id=$_POST['id_usuario'];
$tipo_usuario=$_POST['tipo_usuario'];
$nombre_usuario=$_POST['nombre_usuario'];
$sql="UPDATE `usuarios` SET `tipo_usuario`=:tipo_usuario,`nombre_usuario`=:nombre_usuario WHERE id_usuario=:id";
$stmt=$conexion->prepare($sql);

$stmt->bindParam(":tipo_usuario",$tipo_usuario);
$stmt->bindParam(":nombre_usuario",$nombre_usuario);
$stmt->bindParam(":id",$id);


if(empty($tipo_usuario)){
    echo 'Debe completar todos los campos';
    return;
}
if(empty($nombre_usuario)){
    echo 'Debe completar todos los campos';
    return;
}
$stmt->execute();
echo 'ok';

