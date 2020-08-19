<?php 
include "home.php";
?>
<?php if ($_SESSION['tipo_usuario'] == ADMIN){
    echo '
    
<main>
  <div class="container-fluid">

    <!--Section: Button icon-->
    <section>

        <!--Grid row-->
        <div class="row">
            <div class="col-xl-3 col-md-6 mb-4">

        <!--Card-->
              <div class="card">

                <!--Card Data-->
                  <div class="row mt-3">
                      <div class="col-md-5 col-5 text-left pl-4">
                          <a type="button" class="btn-floating btn-lg light-blue lighten-1 ml-4"><i class="fa fa-users" aria-hidden="true"></i></a>
                      </div>

                      <div class="col-md-7 col-7 text-right pr-5">
                          <h5 class="ml-4 mt-4 mb-2 font-weight-bold">12</h5>
                          <p class="font-small grey-text">Cantidad Personas</p>
                      </div>
                  </div>
                  <!--/.Card Data-->

                  <!--Card content-->
                  <div class="row my-3">
                      <div class="col-md-7 col-7 text-left pl-4">
                          <p class="font-small dark-grey-text font-up ml-4 font-weight-bold"></p>
                      </div>

                      <div class="col-md-5 col-5 text-right pr-5">
                          <p class="font-small grey-text"></p>
                      </div>
                  </div>
                <!--/.Card content-->

            </div>
            
            
          
        </div>
         <div class="col-xl-3 col-md-6 mb-4">

        <!--Card-->
              <div class="card">

                <!--Card Data-->
                  <div class="row mt-3">
                      <div class="col-md-5 col-5 text-left pl-4">
                          <a type="button" class="btn-floating btn-lg light-blue lighten-1 ml-4"><i class="fa fa-user" aria-hidden="true"></i></a>
                      </div>

                      <div class="col-md-7 col-7 text-right pr-5">
                          <h5 class="ml-4 mt-4 mb-2 font-weight-bold">12</h5>
                          <p class="font-small grey-text">Cantidad Alumnos</p>
                      </div>
                  </div>
                  <!--/.Card Data-->

                  <!--Card content-->
                  <div class="row my-3">
                      <div class="col-md-7 col-7 text-left pl-4">
                          <p class="font-small dark-grey-text font-up ml-4 font-weight-bold"></p>
                      </div>

                      <div class="col-md-5 col-5 text-right pr-5">
                          <p class="font-small grey-text"></p>
                      </div>
                  </div>
                <!--/.Card content-->

            </div>
            
            
          
        </div>
        <div class="col-xl-3 col-md-6 mb-4">

<!--Card-->
      <div class="card">

        <!--Card Data-->
          <div class="row mt-3">
              <div class="col-md-5 col-5 text-left pl-4">
                  <a type="button" class="btn-floating btn-lg light-blue lighten-1 ml-4"><i class="fa fa-user-circle" aria-hidden="true"></i></a>
              </div>

              <div class="col-md-7 col-7 text-right pr-5">
                  <h5 class="ml-4 mt-4 mb-2 font-weight-bold">12</h5>
                  <p class="font-small grey-text">Cantidad Usuarios</p>
              </div>
          </div>
          <!--/.Card Data-->

          <!--Card content-->
          <div class="row my-3">
              <div class="col-md-7 col-7 text-left pl-4">
                  <p class="font-small dark-grey-text font-up ml-4 font-weight-bold"></p>
              </div>

              <div class="col-md-5 col-5 text-right pr-5">
                  <p class="font-small grey-text"></p>
              </div>
          </div>
        <!--/.Card content-->

    </div>
    
    
  
</div>
    </div>
  </seccion>
</div>
</main>';
}?>




<?php
include "../template/script.php";
echo "<script>

    swal({
        icon: 'success',
        title: 'Bienvenido',
        showConfirmButton: false,
        timer: 1500
      });   

        </script>"
?>
