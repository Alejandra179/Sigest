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
                                <form class="container card" style="width: 100%;" id="modalUpdate">
                                    <div class="row justify-content-center">
                                        <div class="col-10">
                                            <div class="md-form">
                                                <input type="text" hidden="true" name="id_usuario" id="id_usuario"> 
                                            </div>
                                            <div class="md-form">
                                                <input type="text" name="rela_persona" id="nombre_persona" class="form-control" disabled>                                                    
                                            </div>
                                            <div class="md-form">
                                                <select class="browser-default custom-select" name="tipo_usuario" >
                                                    
                                                    <option selected id="tipo_usuario" value=""></option>
                                                    <option value='1'>Administrador</option>
                                                    <option value='3'>Alumno</option>
                                                    <option value='2'>Profesor</option>                                  
                                                </select>
                                            </div>                                                                                                                       
                                            <div class="md-form">
                                                <input type="text" name="nombre_usuario" class="form-control" id="nombre_usuario">                                                                              
                                            </div>                                     
                                            
                                            <div class="md-form">
                                                <input type="submit" id="actualizarUsuario" class="btn btn-mdb-color" value="Actualizar"/>
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
