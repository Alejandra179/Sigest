<?php
include "../../conexion/conexion.php";

$id_alumno=$_POST['id_alumno'];

$sql="DELETE FROM `alumnos` WHERE id_alumno=:id_alumno";
$stmt=$conexion->prepare($sql);
$stmt->bindParam(":id_alumno",$id_alumno);
if($stmt->execute()){
    echo '1';
}else{
    echo '0';
}
