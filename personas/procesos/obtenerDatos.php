<?php

/* echo '<pre>';print_r($_POST);'</pre>';
die(); */

include "../../conexion/conexion.php";

$id=$_POST['id_persona'];
$sql="SELECT * FROM `personas` LEFT JOIN localidades on id_loca=rela_id_localidad WHERE id_persona=:id";
$stmt=$conexion->prepare($sql);
$stmt->execute(array(":id"=>$id));
$datos=$stmt->fetch(PDO::FETCH_OBJ);

echo json_encode($datos);