<?php
include "../../conexion/conexion.php";

$rela_persona=$_POST['rela_persona'];
$tipo_usuario=$_POST['tipo_usuario'];
$nombre_usuario=$_POST['nombre_usuario'];
$clave=$_POST['clave'];

$sql="INSERT INTO `usuarios`(`tipo_usuario`, `rela_persona`, `nombre_usuario`, `clave`) VALUES (:tipo_usuario,:rela_persona,:nombre_usuario,:clave)";
$stmt=$conexion->prepare($sql);
$stmt->bindParam(":tipo_usuario",$tipo_usuario);
$stmt->bindParam(":rela_persona",$rela_persona);
$stmt->bindParam(":nombre_usuario",$nombre_usuario);
$stmt->bindParam(":clave",md5($clave));

if(empty($tipo_usuario) || empty($rela_persona)){
    echo 'Debe completar todos los campos';
    return;
}
/* if(empty($nombre_usuario) || empty($clave)){
    echo 'Debe completar todos los campos';
    return;
} */

$sql_existe = "SELECT COUNT(*) FROM usuarios WHERE rela_persona= $rela_persona";                    
$sentencia_existe = $conexion->query($sql_existe);
if($sentencia_existe->fetchColumn()>0){
    echo 'La persona seleccionada ya posee un nombre de usuario';
    return;
}else{
    $stmt->execute();
    echo 'ok';
}