<?php
include "../conexion/conexion.php";
include "../login/home.php";

$sql="SELECT *FROM `alumnos` JOIN personas on id_persona=rela_id_persona";

$alumnos=$conexion->query($sql)->fetchAll(PDO::FETCH_OBJ);
?>

<main>
        <div class="container-fluid">
            <section>                
                <div class="card p-2 mb-5">
                    <div class="row">
                        <div class="col-lg-6 col-md-7">
                            <form class="form-inline md-form mt-2 ml-2">
                                <input class="form-control my-0" type="text" placeholder="Search" style="max-width: 150px;">
                                <button class="btn btn-sm btn-primary ml-2 px-1"><i class="fa fa-search"></i>  </button>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="card card-cascade narrower z-depth-1">
                    <div class="view gradient-card-header blue-gradient narrower py-2 mx-4 mb-3 d-flex justify-content-between align-items-center">
                        <div>
                            <a href="frmAgregar.php" type="button" class="btn btn-outline-white btn-rounded btn-sm px-2"><i class="fa fa-plus ml-1"></i> Agregar</a>
                            <button type="button" class="btn btn-outline-white btn-rounded btn-sm px-2"><i class="fa fa-columns mt-0"></i></button>
                        </div>
                        <a href="" class="white-text mx-3">Alumnos</a>
                        <div>    
                            <button type="button" class="btn btn-danger btn-rounded btn-sm px-2"><i class="fa fa-trash m-1"></i></button>                            
                        </div>
                    </div>
                    <!--/Card image-->
                    <div class="px-4">
                        <div class="table-responsive">
                            <!--Table-->
                            <table class="table table-hover mb-0">
                                <!--Table head-->
                                <thead>
                                <tr>
                                    <th>Acciones</th>
                                    <th>Apellido y Nombre</th>
                                    <th>Cuil</th>
                                    <th>Fecha Nacimiento</th>
                                    <th>Correo electronico</th>
                                    <th>Nro Legajo</th>
                                    <th>Año de Ingreso</th>
                                </tr>
                                </thead>
                                <!--Table body-->
                                <tbody>
                                    <?php 
                                    foreach($alumnos as $alumno){?>
                                        <tr>
                                            <th>
                                            <div>
                                                <a type="button" class="btn btn-rounded btn-success btn-sm px-2" data-toggle="modal" data-target="#modalModificar" onclick="datosAlumno(<?php echo $alumno->id_alumno?>)"><i class="fa fa-pencil" ></i></a>
                                                <a type="button" class="btn btn-rounded btn-danger btn-sm px-2" onclick="eliminarAlumno(<?php echo $alumno->id_alumno?>)"><i class="fa fa-trash"></i></a>
                                            </div>
                                            </th>
                                            <th><?php echo $alumno->apellido_nombre_persona; ?> </th>
                                            <td><?php echo $alumno->cuil_persona; ?> </td>
                                            <td><?php echo date_format(date_create($alumno->fecha_nacimiento),'d/m/Y'); ?> </td>
                                            <td><?php echo $alumno->email; ?> </td>
                                            <td><?php echo $alumno->nro_legajo; ?> </td>
                                            <td><?php echo $alumno->anio_ingreso; ?> </td>                                    
                                        </tr> 
                                    <?php }?>
                                </tbody>                               
                            </table>
                            <!--Table-->
                        </div>
                        <nav class="my-4">
                            <ul class="pagination pagination-circle pg-blue mb-0">
                                <li class="page-item disabled">
                                    <a class="page-link" aria-label="Previous">
                                        <span aria-hidden="true">&laquo;</span>
                                        <span class="sr-only">Previous</span>
                                    </a>
                                </li>
                                <li class="page-item active"><a class="page-link">1</a></li>
                                <li class="page-item"><a class="page-link">2</a></li>
                                <li class="page-item clearfix d-none d-md-inline-block"><a class="page-link">3</a></li>
                                <li class="page-item clearfix d-none d-md-inline-block"><a class="page-link">4</a></li>
                                <li class="page-item clearfix d-none d-md-inline-block"><a class="page-link">5</a></li>
                                <li class="page-item">
                                    <a class="page-link" aria-label="Next">
                                        <span aria-hidden="true">&raquo;</span>
                                        <span class="sr-only">Next</span>
                                    </a>
                                </li>
                            </ul>
                        </nav>                        
                    </div>
                </div>
            </section>
        </div>
    </main>

<?php
include "modal_update.php";
include "../template/script.php"?>
