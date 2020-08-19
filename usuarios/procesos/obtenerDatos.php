<?php
include "../../conexion/conexion.php";
$id_usuario=$_POST['id_usuario'];

$sql="SELECT *FROM usuarios JOIN personas ON id_persona=rela_persona WHERE id_usuario=:id_usuario";
$stmt=$conexion->prepare($sql);
$stmt->execute(array(":id_usuario"=>$id_usuario));
$datos=$stmt->fetch(PDO::FETCH_OBJ);

echo json_encode($datos);