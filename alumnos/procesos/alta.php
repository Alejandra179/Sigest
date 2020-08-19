<?php

include "../../conexion/conexion.php";

$anio_ingreso=$_POST['anio_ingreso'];
$nro_legajo=$_POST['nro_legajo'];
$rela_id_persona=$_POST['rela_id_persona'];

$sql="INSERT INTO `alumnos`(`anio_ingreso`, `nro_legajo`, `rela_id_persona`, `fecha_alta`) VALUES (:anio_ingreso,:nro_legajo,:rela_id_persona,:alta)";
$stmt=$conexion->prepare($sql);

$stmt->bindParam(":anio_ingreso",$anio_ingreso);
$stmt->bindParam(":nro_legajo",$nro_legajo);
$stmt->bindParam(":rela_id_persona",$rela_id_persona);
$stmt->bindParam(":alta",date('Y-m-d'));

if(empty($rela_id_persona)){
    echo 'el usuario debe vincularse a una persona';
    return;
}

if(empty($nro_legajo) || empty($anio_ingreso)){
    echo 'debe completar todos los campos';
    return;
}

$sql_existe = "SELECT COUNT(*) FROM alumnos WHERE rela_id_persona= $rela_id_persona";                    
$sentencia_existe = $conexion->query($sql_existe);
if($sentencia_existe->fetchColumn()>0){
    echo 'esta persona ya esta dada de alta como alumno';
    return;
}else{
    $stmt->execute();
    echo 'ok';
}
