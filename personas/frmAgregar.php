<?php

include "../login/home.php";
include "../conexion/conexion.php";
$sql_localidades="SELECT * FROM `localidades` ORDER BY `localidad` ASC";
$localidades=$conexion->query($sql_localidades)->fetchAll(PDO::FETCH_OBJ);

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

                        <a href="" class="white-text mx-3">Personas</a>

                        <div>    
                            <button type="button" class="btn btn-danger btn-rounded btn-sm px-2"><i class="fa fa-trash m-1"></i></button>                            
                        </div>

                    </div>
                    <div class="container-fluid">

            <!--Section: Inputs-->
            <form id="formulario_insertar" method="POST" class="container card mb-5" style="width: 50%;" >

                <div class="row justify-content-center">
                    <div class="col-10">                    
                            <div class="md-form">                                
                                <input type="text" id="nombre_apellido" class="form-control" name="nombre_apellido"  
                                onkeypress="return validarNombre(event)" maxlength="50" required>
                                <label for="form3">Apellido y Nombres(*)</label>
                            <div class="md-form">
                                <input type="text" id="cuil" class="form-control" name="cuil"
                                onkeypress="return validarNumeros(event)" maxlength="11" required>
                                <label for="form4">CUIL(*)</label>                               
                            </div>                        
                            <div class="md-form">
                                <label for="form6">Email</label>
                                <input type="email" id="email" class="form-control" required name="email">                                                               
                            </div>
                            <div class="md-form">
                                <select  class="mdb-select" name="sexo" id="sexo" required name="sexo">
                                    <option selected="true" disabled>Seleccione el sexo(*)</option>
                                    <option value="F">Femenino</option>
                                    <option value="M">Masculino</option> 
                                    <option value="O">Otro</option>    
                                </select>
                            </div>
                            <div class="md-form">
                                <input type="date" class="form-control" id="fecha_nacimiento" required name="fecha_nacimiento">                                
                            </div>
                            <div class="md-form">
                                <select class="mdb-select" name="localidad" id="localidad" required>
                                    <option selected="true" disabled>Seleccione la localidad</option>
                                    <?php 
                                    foreach($localidades as $localidad){
                                        echo "<option value='$localidad->id_loca'>$localidad->localidad</option>";
                                    }?>   
                                </select>
                                
                            </div>
                            <div class="md-form">
                                <input type="text" id="domicilio" class="form-control" name="domicilio" required maxlength="100">
                                <label class="active" for="form4">Domicilio</label>
                            </div>
                            <div class="md-form">
                                <input type="text" id="telefono" class="form-control" name="telefono" 
                                onkeypress="return validarNumeros(event)" maxlength="10">
                                <label class="active" for="form4">Numero de Contacto</label>                                
                            </div>
                            <div class="md-form">
                                <input type="submit" class="btn btn-mdb-color" id="agregar_persona" value="Agregar"/>                                                                                           
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

