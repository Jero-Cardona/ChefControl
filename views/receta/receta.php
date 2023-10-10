<?php
require "../templade/headerR.php";
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="../../css/style.css">
    <link rel="icon" href="img/logo.jpeg">
</head>
<body>
<div class="container d-flexbox" style="margin-top: 50px;">
    <div class="row">
    <div class="col-4 d-block">
        <p class="pE">Estandarizar una nueva receta</p>
        <a href="EsReceta.php" style="background-color: #FF6600;" class="btn btn-primary btn-lg">Estandarizar <i class="fa-solid fa-plus"></i></a>
    </div>
    <div class="col-4 d-block">
        <p class="pE">Sugerir una nueva Receta</p>
        <a href="Sugerir.php" style="background-color: #FF6600;" class="btn btn-primary btn-lg">Sugerir Receta <i class="fa-solid fa-cheese"></i></a>
    </div>
    <div class="col-4 d-block">
        <p class="pE">Listado de Sugerencia de Recetas</p>
        <a href="Sugerencias.php" style="background-color: #FF6600;" class="btn btn-primary btn-lg">Ver Sugerencias <i class="fa-solid fa-list"></i></a>
    </div>
    </div>
</div>
<h1 class="d-flex" style="justify-content: center;" >Listado de Recetas ya estandarizadas</h1>
    <div class="container" style="background-color: #D5D5D5; margin-top: 30px; margin-bottom: 20px;">
        <div class="row">
            <div class="col-4" >
              <div class="card" style="width: 22rem; margin-top: 30px;">
                  <img src="../../img/receta1.png" class="card-img-top" style="height: 450px;" alt="imagen receta">
                  <div class="card-body">
                       <h5 class="card-title">Receta</h5>
                       <p class="card-text">Bizcocho de espinacas con mascarpone</p>
                       <a href="https://alimentosdoria.com/recetas/lasana-mixta" class="btn btn-primary">Preparación </a>
                  </div>
              </div>
           </div>
           <div class="col-4">
            <div class="card" style="width: 22rem; margin-top: 30px;">
                <img src="../../img/receta2.png" class="card-img-top" style="height: 450px;" alt="imagen receta">
                <div class="card-body">
                     <h5 class="card-title">Receta</h5>
                     <p class="card-text">Pastel de pescado y acederas</p>
                     <a href="https://alimentosdoria.com/recetas/lasana-mixta" class="btn btn-primary">Preparación</a>
                </div>
            </div>
         </div>
         <div class="col-4">
            <div class="card" style="width: 22rem; margin-top: 30px;">
                <img src="../../img/receta3.png" class="card-img-top" style="height: 450px;" alt="imagen receta">
                <div class="card-body">
                     <h5 class="card-title">Receta</h5>
                     <p class="card-text">Hojaldre de pescado</p>
                     <a href="https://alimentosdoria.com/recetas/lasana-mixta" class="btn btn-primary">Preparacion</a>
                </div>
            </div>
         </div>
         <div class="col-4">
            <div class="card" style="width: 22rem; margin-top: 30px;">
                <img src="../../img/receta4.png" class="card-img-top" style="height: 450px;" alt="imagen receta">
                <div class="card-body">
                     <h5 class="card-title">Receta</h5>
                     <p class="card-text">Croquetas de cabrales</p>
                     <a href="https://alimentosdoria.com/recetas/lasana-mixta" class="btn btn-primary">Preparación</a>
                </div>
            </div>
         </div>
         <div class="col-4">
            <div class="card" style="width: 22rem; margin-top: 30px;">
                <img src="../../img/receta5.png" class="card-img-top" style="height: 450px;" alt="imagen receta">
                <div class="card-body">
                     <h5 class="card-title">Receta</h5>
                     <p class="card-text">Dip de Cheddar y brócoli</p>
                     <a href="https://alimentosdoria.com/recetas/lasana-mixta" class="btn btn-primary">Preparacion</a>
                </div>
            </div>
         </div>
         <div class="col-4">
            <div class="card" style="width: 22rem; margin-top: 30px;">
                <img src="../../img/receta6.png" class="card-img-top" style="height: 450px;" style="height: 450px;" alt="imagen receta">
                <div class="card-body">
                     <h5 class="card-title">Receta</h5>
                     <p class="card-text">Pastel de queso y coliflor</p>
                     <a href="https://alimentosdoria.com/recetas/lasana-mixta" class="btn btn-primary">Preparación</a>
                </div>
            </div>
         </div>
        </div>     
    </div>
<?php
require "../templade/footer.php";
?>
</body>
</html>
