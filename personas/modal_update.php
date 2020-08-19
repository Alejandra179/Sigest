<div class="modal fade" id="modalModificar" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog cascading-modal" role="document">
            <!--Content-->
            <div class="modal-content">
                <div class="modal-c-tabs">
                    <span class="nav nav-tabs tabs-2 light-blue darken-3" role="tablist">
                        <a class="nav-link active align-center"  href="#" ><i class="fa fa-user mr-1"></i> Editar</a>
                        
                    </span>
                    <!-- Tab panels -->
                    <div class="tab-content">
                        <!--Panel 17-->
                        <div class="tab-pane fade in show active" role="tabpanel">
                            <!--Body-->
                            <div class="modal-body mb-1">
                                <form class="container card" style="width: 100%;" id="modalUpdate" method="POST">
                                    <div class="row justify-content-center">
                                        <div class="col-10">
                                            <div class="md-form">
                                                <input type="text" hidden="true" name="id_persona" id="id_persona"> 
                                            </div>
                                            <div class="md-form">
                                                <input type="text" name="nombre_apellido" maxlength="50" id="nombre_apellido" class="form-control" onkeypress="return validarNombre(event)"> 
                                            </div>                                            
                                            <div class="md-form">
                                                <input type="email" name="email" id="email" class="form-control">     
                                            </div>                                            
                                            <div class="md-form">
                                                <select class="browser-default custom-select" name="rela_id_localidad" >
                                                    <option id="rela_id_localidad" selected></option>
                                                    <?php
                                                    include "../conexion/conexion.php";
                                                    $sql_localidades="SELECT * FROM `localidades` ";
                                                    $localidades=$conexion->query($sql_localidades)->fetchAll(PDO::FETCH_OBJ); 
                                                    foreach($localidades as $localidad){
                                                        echo "<option value='$localidad->id_loca'>$localidad->localidad</option>";
                                                    }?>   
                                                </select>
                                            </div>
                                            <div class="md-form">
                                                <input type="date" name="fecha_nacimiento" class="form-control" id="fecha_nacimiento">   
                                            </div>
                                            <div class="md-form">
                                                <input type="text" name="domicilio" class="form-control" id="domicilio">
                                            </div>
                                            <div class="md-form">
                                                <input type="text"  onkeypress="return validarNumeros(event)" name="numero" class="form-control" id="numero">
                                            </div>
                                            <div class="md-form">
                                                <input type="submit" id="actualizarPersona" class="btn btn-elegant" data-dismiss="modal" value="Actualizar"/>
                                            </div>
                                                    
                                        </div>                    
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--/.Content-->
        </div>
    </div>
