<?php
//Para registrar los datos en la BD
include('../libraries/conexion.php');
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="../css/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <link rel="icon" href="../img/logo.jpeg">
    <title>Registro</title>
</head>
<body class="body">
    <div class="container" style="background-color:#D5D5D5; margin-top: 100px; border-radius:20px;">
      <div class="encabezado">
            <h1 class="titulo">Registro Usuarios</h1>
      </div>
    <form method="POST" action="../models/user.php">
        <div class="row">
          <div class="col-6">
            <h5>Ingrese su Documento</h5>
            <input type="tel" class="form-control input" placeholder="Numero Documento" name="Id_Empleado">
          </div>
          <div class="col-6">
            <h5>Ingrese sus Nombres</h5>
            <input type="text" class="form-control input" placeholder="Nombres" name="Nombre">
          </div>
        </div>
        <br>
        <br>
        <div class="row">
          <div class="col-6">
              <h5>Ingrese sus Apellidos</h5>
                <input type="text" class="form-control input" placeholder="Apellidos" name="Apellido">
            </div>
            <div class="col-6">
              <h5>Ingrese su Telefono</h5>
                <input type="tel" class="form-control input" placeholder="Numero de Telefono" name="Telefono">
            </div>
        </div>
        <br>
        <br>
        <div class="row">
          <div class="col-12">
              <h5 style="text-align: center;">Ingrese su Rol </h5>
                <input type="tel" class="form-control input" placeholder="Numero Rol" name="Id_Rol">
            </div>
        </div>
          <br>
          <br>
          <div class="row">
            <div class="col-6">
            <input type="submit" class="boton" value="EnviarDatos" style="justify-self: center; font-family: fantasy; color: white; border-radius: 10px; margin-bottom: 50px;">
            </div>
            <div class="col-6">
              <button class="boton"><a style="color:white;" href="index/index.php">Volver</a></button>
            </div>
        </form> 
        </div>
    </div>
</body>
</html>