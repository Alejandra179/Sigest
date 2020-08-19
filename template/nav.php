<?php if ($_SESSION['tipo_usuario'] == ADMIN){
    echo '
    <header>

        <!-- Sidebar navigation -->
        <div id="slide-out" class="side-nav sn-bg-4 fixed">
            <ul class="custom-scrollbar">
            <!-- Logo -->
            <li class="logo-sn waves-effect">
                <div class="text-center">
                    <img src="../img/logo.png" alt="" srcset="" style="width: 8rem;">
                </div>
            </li>
                      
            <li>
                <ul class="collapsible collapsible-accordion">
                <li><a href="#" class="collapsible-header waves-effect">Administrador</a></li>
                    <li><a class="collapsible-header waves-effect"><i class="fa fa-university"></i>Carreras<i class="fa fa-angle-down rotate-icon"></i></a>
                        <div class="collapsible-body">
                            <ul>
                                <li><a href="#" class="waves-effect">ETDS</a>
                                </li>
                                <li><a href="#" class="waves-effect">TSM</a>
                                </li>
                                
                            </ul>
                        </div>
                    </>
                    <li><a href="../personas/index.php" class="collapsible-header waves-effect"><i class="fa fa-users"></i>Personas</a></li>
                    <li><a href="../alumnos/index.php" class="collapsible-header waves-effect"><i class="fa fa-user"></i>Alumnos</a></li>
                    <li><a href="../usuarios/index.php" class="collapsible-header waves-effect"><i class="fa fa-user-circle"></i> Usuarios</a></li>
                </ul>
            </li>
            </ul>
        </div>
        
    </header>';
}else{
    echo '
    <header>

        <!-- Sidebar navigation -->
        <div id="slide-out" class="side-nav sn-bg-4 fixed">
            <ul class="custom-scrollbar">
            <!-- Logo -->
            <li class="logo-sn waves-effect">
                <div class="text-center">
                    <img src="../img/logo.png" alt="" srcset="" style="width: 8rem;">
                </div>
            </li>   
                    
            <li>
                <ul class="collapsible collapsible-accordion">
                <li><a href="#" class="collapsible-header waves-effect">Alumno</a></li>
                    <li><a class="collapsible-header waves-effect"><i class="fa fa-university"></i>Carreras<i class="fa fa-angle-down rotate-icon"></i></a>
                        <div class="collapsible-body">
                            <ul>
                                <li><a href="#" class="waves-effect">ETDS</a>
                                </li>
                                <li><a href="#" class="waves-effect">TSM</a>
                                </li>
                                
                            </ul>
                        </div>
                    </li>
                    
                    
                </ul>
            </li>
            </ul>
        </div>
        
    </header>';
}

?>

