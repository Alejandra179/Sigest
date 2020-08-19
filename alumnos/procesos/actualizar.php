<?php
include "../../conexion/conexion.php";
$id=$_POST['id_alumno'];
$nro_legajo=$_POST['nro_legajo'];
$anio_ingreso=$_POST['anio_ingreso'];

$sql="UPDATE `alumnos` SET `anio_ingreso`=:anio_ingreso,`nro_legajo`=:nro_legajo WHERE id_alumno=:id";
$stmt=$conexion->prepare($sql);
$stmt->execute(array(":anio_ingreso"=>$anio_ingreso
,":nro_legajo"=>$nro_legajo
,":id"=>$id));




