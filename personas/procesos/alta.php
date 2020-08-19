<?php

include "../../conexion/conexion.php";

$apellido_nombre=$_POST['nombre_apellido'];
$cuil=$_POST['cuil'];
$email=$_POST['email'];
$sexo=$_POST['sexo'];
$fecha_nacimiento=$_POST['fecha_nacimiento'];
$localidad=$_POST['localidad'];
$domicilio=$_POST['domicilio'];
$numero=$_POST['telefono'];

$sql="INSERT INTO `personas`(`apellido_nombre_persona`, `cuil_persona`, `sexo`, `fecha_nacimiento`, `email`, `domicilio`, `contacto`, `rela_id_localidad`) VALUES (:apellido_nombre,:cuil,:sexo,:fecha_nacimiento,:email,:domicilio,:numero,:localidad)";

$stmt=$conexion->prepare($sql);  
$stmt->bindParam(":apellido_nombre",$apellido_nombre);
$stmt->bindParam(":cuil",$cuil);
$stmt->bindParam(":sexo",$sexo);
$stmt->bindParam(":fecha_nacimiento",$fecha_nacimiento);
$stmt->bindParam(":email",$email);
$stmt->bindParam(":domicilio",$domicilio);
$stmt->bindParam(":numero",$numero);
$stmt->bindParam(":localidad",$localidad);
function validar_cuil($value){
    $valid = false;
    $cuil = str_replace('_', '', str_replace('-', '', $value));
    $aMult = [5,4,3,2,7,6,5,4,3,2];

    if ($cuil && strlen($cuil)== 11) {
        $aCUIL = str_split($cuil);
        $iResult = 0;
        for($i = 0; $i <= 9; $i++)
        {
            $iResult += $aCUIL[$i] * $aMult[$i];
        }
        $iResult = ($iResult % 11);
        $iResult = 11 - $iResult;

        if ($iResult == 11) $iResult = 0;
        if ($iResult == 10) $iResult = 9;

        if ($iResult == $aCUIL[10])
        {
            $valid = true;
        }
    }
    return $valid;
}
if(empty(trim($apellido_nombre))){
    echo 'campo obligatorio vacio';
    return;
}
if(!validar_cuil($cuil)){
    echo 'cuil invalido';
    return;
}

if(!filter_var($email, FILTER_VALIDATE_EMAIL)){
    echo 'correo invalido o vacio';
    return;
}
if($fecha_nacimiento>date('Y-m-d')){
    echo 'fecha invalida';
    return;
}
if(empty($sexo)){
    echo 'campo obligatorio vacio';
    return;
} 
        

$sql_existe = "SELECT COUNT(*) FROM personas WHERE cuil_persona= $cuil ";                    
$sentencia_existe = $conexion->query($sql_existe);
if($sentencia_existe->fetchColumn()>0){
    echo 'persona ya registrada';
    return;
}else{
    $stmt->execute();
    echo 'ok';
}





