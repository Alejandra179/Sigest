function validarNombre(event){
    if((event.charCode >= 97 && event.charCode <= 122 || (event.charCode===32) 
    || event.charCode>=60 & event.charCode<=90)){        
        return true
    }        
    return false;           
}

function validarNumeros(event){
    if(event.charCode >= 48 && event.charCode <= 57){
        return true
    }        
    return false 
}


$('#agregar_persona').on('click',function(e){

    e.preventDefault();    
    $.ajax({
    type: "POST",
    data: $("#formulario_insertar").serialize(),          
    url: "../personas/procesos/alta.php",
    success: function(resp){
        switch (resp) {
            case 'campo obligatorio vacio':
                swal("campo obligatorio vacio",".","warning");                
                break;
            case 'cuil invalido':
            swal("cuil invalido",".","warning");                
                break;
            case 'correo invalido o vacio':
            swal("correo invalido o vacio",".","warning");                
                break;
            case 'fecha invalida':
                swal("fecha invalida",".","warning");                
                    break;
            case 'persona ya registrada':
                swal("persona ya registrada",".","warning");                
                break;
            case 'ok':
                swal("datos guardados correctamente",".","success").then(()=>{
                    window.location.replace('../personas/index.php');
                })                
                break;
        
            default:
                break;
        }        
    }
    })      
})

         

function eliminarPersona(id_persona){
    swal({
        title:"¿Seguro que deseas eliminar esta persona?",
        text:"Una vez eliminado, se borraran todos los registros vinculados",
        icon: "warning",
        buttons: true,
        dangerMode: true,
    }).then((willDelete)=>{
        if(willDelete){
            $.ajax({
                type:'POST',
                url:'../personas/procesos/eliminar.php',
                data:`id_persona=${id_persona}`,
                success: function(resp){                    
                    if(resp==1){
                        swal({
                            icon: 'success',
                            title: 'Eliminado con exito',
                            timer: 1000
                        }).then(()=>{
                            window.location.replace('../personas/index.php');
                        })
                    }else{
                        swal("verifique que este registro no este vinculado a un usuario o alumno",".","error");
                    }
                }
            })
        }
            
    });
}

function datosPersona(id_persona){ 
    $.ajax({
        type:'POST',
        url:'../personas/procesos/obtenerDatos.php',
        data:`id_persona=${id_persona}`,
        success: function(resp){            
            let datos=JSON.parse(resp);                     
            $('#id_persona').val(datos.id_persona);
            $('#nombre_apellido').val(datos.apellido_nombre_persona);
            $('#email').val(datos.email);
            $('#fecha_nacimiento').val(datos.fecha_nacimiento);
            $('#rela_id_localidad').text(datos.localidad);
            $('#rela_id_localidad').attr('value',datos.rela_id_localidad);
            $('#domicilio').val(datos.domicilio);
            $('#numero').val(datos.numero);
        }
    })
}


$('#actualizarPersona').on('click',function(e){
    e.preventDefault()
    $.ajax({
        type:'POST',
        url:'../personas/procesos/actualizar.php',
        data: $('#modalUpdate').serialize(),
        success: function(resp){
            switch (resp) {
                case 'campo obligatorio vacio':
                    swal("campo obligatorio vacio",".","warning");                
                    break;
                case 'correo invalido':
                    swal("correo invalido",".","warning");                
                        break;
                case 'fecha invalida':
                    swal("fecha invalida",".","warning");                
                        break;
                case 'ok':
                    swal("datos actualizados correctamente",".","success").then(()=>{
                        window.location.replace('../personas/index.php');
                    })                
                    break;
            
                default:
                    break;
            }        
        }
    })
    
})
    

$('#altaAlumno').on('click',function(e){

    e.preventDefault();    
    $.ajax({
    type: "POST",
    data: $("#formulario_insertar").serialize(),          
    url: "../alumnos/procesos/alta.php",
    success: function(resp){
        switch (resp) {
            case 'el usuario debe vincularse a una persona':
                swal("el usuario debe vincularse a una persona",".","warning");                
                break;
            case 'debe completar todos los campos':
            swal("debe completar todos los campos",".","warning");                
                break;
            case 'esta persona ya esta dada de alta como alumno':
            swal("esta persona ya esta dada de alta como alumno",".","warning");                
                break;
            case 'ok':
                swal("datos guardados correctamente",".","success").then(()=>{
                    window.location.replace('../alumnos/index.php');
                })                
                break;
        
            default:
                break;
        }        
    }
    })      
})


function eliminarAlumno(id_alumno){
    swal({
        title:"¿Seguro que deseas eliminar este alumno?",
        text:"Una vez eliminado se borraran todos los registros vinculados",
        icon: "warning",
        buttons: true,
        dangerMode: true,
    })
    .then((willDelete)=>{
        if(willDelete){
            $.ajax({
                type:'POST',
                url:'../alumnos/procesos/eliminar.php',
                data:`id_alumno=${id_alumno}`,
                success: function(resp){                    
                    if(resp==1){
                        swal({
                            icon: 'success',
                            title: 'Eliminado con exito',
                            timer: 1000
                        }).then(()=>{
                            window.location.replace('../alumnos/index.php');
                        })
                    }else{
                        swal("verifique que este registro no este vinculado a un usuario",".","error");
                    }
                }
            })
        }
            
    });
}
function datosAlumno(id_alumno){ 
    $.ajax({
        type:'POST',
        url:'../alumnos/procesos/obtenerDatos.php',
        data:`id_alumno=${id_alumno}`,
        success: function(resp){            
            let datos=JSON.parse(resp);                     
            $('#id_alumno').val(datos.id_alumno);
            $('#anio_ingreso').val(datos.anio_ingreso);
            $('#nro_legajo').val(datos.nro_legajo);
            $('#rela_id_persona').text(datos.rela_id_persona);
            $('#rela_id_persona').attr('value',datos.rela_id_persona);
            
        }
    })
}

$('#actualizarAlumno').on('click',function(e){
    e.preventDefault()
    $.ajax({
        type:'POST',
        url:'../alumnos/procesos/actualizar.php',
        data: $('#modalUpdate').serialize(),
        success: function(resp){

            if(resp!=""){
                swal("Registro actualizado correctamente",".","success").then(()=>{
                    window.location.replace('../alumnos/index.php');
                })                
            }else{                 
                swal("Ha ocurrido un error",".","error");               ; 
            }
                
        }
    })
    
})

$('#agregar_usuario').on('click',function(e){
    e.preventDefault();    
    $.ajax({
    type: "POST",
    url: "../usuarios/procesos/alta.php",
    data: $('#formulario_insertar').serialize(),          
    success: function(resp){
        switch (resp) {
            case 'Debe completar todos los campos':
                swal("Debe completar todos los campos",".","warning");                
                break;
            case 'La persona seleccionada ya posee un nombre de usuario':
            swal("La persona seleccionada ya posee un nombre de usuario",".","warning");                
                break;
            case 'ok':
                swal("datos guardados correctamente",".","success").then(()=>{
                    window.location.replace('../usuarios/index.php');
                })                
                break;
        
            default:
                break;
        }      

    } 
    })   
    
})

function datosUsuario(id_usuario){ 
    $.ajax({
        type:'POST',
        url:'../usuarios/procesos/obtenerDatos.php',
        data:`id_usuario=${id_usuario}`,
        success: function(resp){            
            let datos=JSON.parse(resp);                                 
            $('#id_usuario').val(datos.id_usuario);
            $('#nombre_usuario').val(datos.nombre_usuario);
            $('#nombre_persona').val(datos.apellido_nombre_persona);      
            let tipo_usuario=$('#tipo_usuario');
            tipo_usuario.attr('value',datos.tipo_usuario);
            switch (parseInt(datos.tipo_usuario)) {
                case 1:
                    tipo_usuario.text('Administrador');                    
                    break;
                case 2:
                    tipo_usuario.text('Alumno');                
                    break;
                case 3:
                    tipo_usuario.text('Profesor');            
                    break;                
            }
            
        }
    })
}

/*console.log(typeof(variable)), que tipo de datos es la variable */
$('#actualizarUsuario').on('click',function(e){
    e.preventDefault()
    $.ajax({
        type:'POST',
        url:'../usuarios/procesos/actualizar.php',
        data: $('#modalUpdate').serialize(),
        success: function(resp){

            if(resp!=""){
                swal("Registro actualizado correctamente",".","success").then(()=>{
                    window.location.replace('../usuarios/index.php');
                })                
            }else{                 
                swal("Ha ocurrido un error",".","error");          
            }
                
        }
    })
    
})
    
function eliminarUsuario(id_usuario){
    swal({
        title:"¿Seguro que deseas eliminar este alumno?",
        text:"Una vez eliminado se borraran todos los registros vinculados",
        icon: "warning",
        buttons: true,
        dangerMode: true,
    })
    .then((willDelete)=>{
        if(willDelete){
            $.ajax({
                type:'POST',
                url:'../usuarios/procesos/eliminar.php',
                data:`id_usuario=${id_usuario}`,
                success: function(resp){                    
                    if(resp==1){
                        swal({
                            icon: 'success',
                            title: 'Eliminado con exito',
                            timer: 1000
                        }).then(()=>{
                            window.location.replace('../usuarios/index.php');
                        })
                    }else{
                        swal("ha ocurrido un error",".","error");
                    }
                }
            })
        }
            
    });
}
