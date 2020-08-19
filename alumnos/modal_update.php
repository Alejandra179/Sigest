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
                                                <input type="text" hidden="true" name="id_alumno" id="id_alumno"> 
                                            </div>
                                            <div class="md-form">
                                                <select class="mdb-select" name="rela_id_persona" >
                                                    <option selected id="rela_id_persona"></option>
                                                    <?php 
                                                    $sql="SELECT *FROM `personas`";
                                                    $personas=$conexion->query($sql)->fetchAll(PDO::FETCH_OBJ);
                                                    foreach($personas as $persona){
                                                        echo "<option value='$persona->id_persona'>$persona->apellido_nombre_persona</option>";
                                                    }?>   
                                                </select>
                                            </div>                                                                                                                    
                                            <div class="md-form">
                                                <input type="text" name="nro_legajo" class="form-control" id="nro_legajo">                                                                              
                                            </div>                                     
                                            <div class="md-form">
                                                <input type="text" id="anio_ingreso" class="form-control" name="anio_ingreso">                                                
                                            </div>
                                            <div class="md-form">
                                                <input type="submit" id="actualizarAlumno" class="btn btn-mdb-color" value="Actualizar"/>                                           </div>
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
