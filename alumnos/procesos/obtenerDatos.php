<?php
include "../../conexion/conexion.php";
$id_alumno=$_POST['id_alumno'];

$sql="SELECT *FROM alumnos JOIN personas ON id_persona=rela_id_persona WHERE id_alumno=:id_alumno";
$stmt=$conexion->prepare($sql);
$stmt->execute(array(":id_alumno"=>$id_alumno));
$datos=$stmt->fetch(PDO::FETCH_OBJ);

echo json_encode($datos);