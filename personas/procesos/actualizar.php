<?php


include "../../conexion/conexion.php";

$id=$_POST['id_persona'];
$nombre_apellido=$_POST['nombre_apellido'];
$email=$_POST['email'];
$localidad=$_POST['rela_id_localidad'];
$fecha_nacimiento=$_POST['fecha_nacimiento'];
$domicilio=$_POST['domicilio'];
$numero=$_POST['numero'];

$sql="UPDATE `personas` SET `apellido_nombre_persona`=:nombre_apellido,`fecha_nacimiento`=:fecha_nacimiento,`email`=:email,`domicilio`=:domicilio,`contacto`=:numero,`rela_id_localidad`=:localidad WHERE id_persona=:id_persona";

$stmt=$conexion->prepare($sql);

if(empty(trim($nombre_apellido))){
    echo 'campo obligatorio vacio';
    return;
}
if(!filter_var($email, FILTER_VALIDATE_EMAIL)){
    echo 'correo invalido';
    return;
}        
if($fecha_nacimiento>date('Y-m-d')){
    echo 'fecha invalida';
    return;
} 
$stmt->bindParam(":nombre_apellido",$nombre_apellido);
$stmt->bindParam(":fecha_nacimiento",$fecha_nacimiento);
$stmt->bindParam(":email",$email);
$stmt->bindParam(":domicilio",$domicilio);
$stmt->bindParam(":numero",$numero);
$stmt->bindParam(":localidad",$localidad);
$stmt->bindParam(":id_persona",$id);
$stmt->execute();
echo 'ok';


