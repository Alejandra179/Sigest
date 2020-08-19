<?php
include "../login/home.php";
include "../conexion/conexion.php";
$sql_persona="SELECT * FROM `personas` ORDER BY apellido_nombre_persona";
$personas=$conexion->query($sql_persona)->fetchAll(PDO::FETCH_OBJ);
?>


<main>
    <div class="container-fluid">
        <section>
            <div class="card p-2 mb-5">
                <div class="row">
                        <div class="col-lg-6 col-md-7">

                            <form class="form-inline md-form mt-2 ml-2" >
                                <input class="form-control my-0" type="text" placeholder="Search" style="max-width: 150px;">
                                <button class="btn btn-sm btn-primary ml-2 px-1"><i class="fa fa-search"></i>  </button>
                            </form>
                        </div>
                    </div>
                    <!--Grid row-->
                </div>
                <!--Top Table UI-->

                <div class="card card-cascade narrower z-depth-1">

                    <!--Card image-->
                    <div class="view gradient-card-header blue-gradient narrower py-2 mx-4 mb-3 d-flex justify-content-between align-items-center">
                        <div>
                            <button type="button" class="btn btn-outline-white btn-rounded btn-sm px-2" ><i class="fa fa-plus ml-1"></i> Agregar</button>
                            <a href="index.php" type="button" class="btn btn-outline-white btn-rounded btn-sm px-2"><i class="fa fa-columns mt-0"></i></a>
                        </div>

                        <a href="" class="white-text mx-3">Usuarios</a>

                        <div>    
                            <button type="button" class="btn btn-danger btn-rounded btn-sm px-2"><i class="fa fa-trash m-1"></i></button>                            
                        </div>

                    </div>
                    <div class="container-fluid">

            <!--Section: Inputs-->
            <form id="formulario_insertar" method="post" class="container card mb-5" style="width: 50%;">

                <div class="row justify-content-center">
                    <div class="col-10">
                            <div class="md-form">
                                <select class="mdb-select" name="rela_persona" id="rela_persona">
                                    <option selected="true" disabled>Seleccione una persona</option>
                                    <?php 
                                    foreach($personas as $persona){
                                        echo "<option value='$persona->id_persona'>$persona->apellido_nombre_persona</option>";
                                    }?>   
                                </select>
                            </div>  
                            <div class="md-form">
                                <select class="mdb-select" name="tipo_usuario" id="tipo_usuario">
                                    <option selected="true" disabled>Tipo de usuario</option>
                                    <option value='1'>Administrador</option>
                                    <option value='3'>Alumno</option>
                                    <option value='2'>Profesor</option>                                  
                                </select>
                            </div>                                                                                                  
                            <div class="md-form">
                                <input type="text" name="nombre_usuario" class="form-control" id="nombre_usuario">  
                                <label for="form4">Nombre de Usuario</label>                              
                            </div>                           
                            <div class="md-form">
                                <input type="text" id="clave" class="form-control" name="clave">
                                <label for="form4">Contraseña</label>
                            </div>
                            <div class="md-form">
                                <input type="submit" id="agregar_usuario" class="btn btn-mdb-color" value="Agregar"/>
                            </div>
                            
                        </div>                    
                </div>
            </form>
        </section>
    </div>
</main>
<?php include "../template/script.php"?>
</body>

</html>	
