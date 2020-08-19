<?php
echo "Leandro is'here"
include "../login/home.php";
include "../conexion/conexion.php";

$sql_persona="SELECT * FROM `personas` ORDER BY apellido_nombre_persona";
$personas=$conexion->query($sql_persona)->fetchAll(PDO::FETCH_OBJ);
?>
<?php
include "../template/head.php";
include "../template/nav.php";
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

                        <a href="" class="white-text mx-3">Alumnos</a>

                        <div>    
                            <button type="button" class="btn btn-danger btn-rounded btn-sm px-2"><i class="fa fa-trash m-1"></i></button>                            
                        </div>

                    </div>
                    <div class="container-fluid">

            <!--Section: Inputs-->
            <form id="formulario_insertar" class="container card mb-5" style="width: 50%;">

                <div class="row justify-content-center">
                    <div class="col-10">
                            <div class="md-form">
                                <select class="mdb-select" name="rela_id_persona" id="rela_id_persona">
                                    <option selected="true" disabled>Seleccione una persona</option>
                                    <?php 
                                    foreach($personas as $persona){
                                        echo "<option value='$persona->id_persona'>$persona->apellido_nombre_persona</option>";
                                    }?>   
                                </select>
                            </div>                                                                        
                            
                            <div class="md-form">
                                <input type="text" name="nro_legajo" class="form-control" id="nro_legajo">  
                                <label for="form4">Numero de Legajo</label>                              
                            </div>
                           
                            <div class="md-form">
                                <input type="text" id="anio_ingreso" onkeypress="return validarNumeros(event)" class="form-control" name="anio_ingreso" maxlength="4">
                                <label for="form4">Año de Ingreso</label>
                            </div>
                            <div class="md-form">
                                <button type="submit" id="altaAlumno" class="btn btn-mdb-color">Agregar</button>
                            </div>
                            
                        </div>                    
                </div>
            </form>
        </section>
    </div>
</main>
<?php include "../template/script.php"?>
