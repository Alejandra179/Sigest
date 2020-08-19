<?php
session_start();


if (isset($_POST)) {
    include "../conexion/conexion.php";
    $usuario = $_POST['usuario'];
    $password = $_POST['password'];
    $sql_consulta = "SELECT * 
                FROM usuarios 
                WHERE nombre_usuario = :usuario
                    and clave= :password ";

    $stmt = $conexion->prepare($sql_consulta);
    $stmt->bindParam(":usuario",$usuario);
    $stmt->bindParam(":password",md5($password));    
    $stmt->execute();

    if ($stmt->rowCount() == 1){
        $_SESSION['usuario']=$usuario;
        $fila_usuario = $stmt->fetch(PDO::FETCH_OBJ);
        $fila_persona = $conexion->query("SELECT * 
                                FROM personas 
                                Where id_persona = $fila_usuario->rela_persona")->fetch(PDO::FETCH_OBJ);
        $_SESSION['id_usuario'] = $fila_usuario->id_usuario;
        $_SESSION['tipo_usuario'] = $fila_usuario->tipo_usuario;
        $_SESSION['id_usuario'] = $fila_usuario->id_usuario;
        $_SESSION['apellido_nombre_persona'] = $fila_persona->apellido_nombre_persona;
        header("Location: main.php");       
    }
    else{
        
    include "../template/script.php";
    echo "<script>
    swal({
    icon: 'error',
    title: 'Contraseña incorrecta',
    timer: 2000
    }).then(()=>{
        window.location.replace('../index.php');
    })                

        </script>";
    }

}
