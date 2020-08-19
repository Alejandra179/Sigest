<?php
include "../../conexion/conexion.php";

$id_persona=$_POST['id_persona'];

$sql="DELETE FROM `personas` WHERE id_persona=:id_persona";
$stmt=$conexion->prepare($sql);
$stmt->bindParam(":id_persona",$id_persona);
if($stmt->execute()){
    echo '1';
}else{
    echo '0';
}


