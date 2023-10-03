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
    <form>
        <div class="row">
          <div class="col-6">
            <h5>Ingrese sus nombres</h5>
            <input type="text" class="form-control input" placeholder="Nombre" name="Nombre">
          </div>
          <div class="col-6">
            <h5>Ingrese sus Apellidos</h5>
            <input type="text" class="form-control input" placeholder="Apellido" name="Apellido">
          </div>
        </div>
        <br>
        <br>
        <div class="row">
          <div class="col-6">
              <h5>Ingrese su Teléfono</h5>
                <input type="tel" class="form-control input" placeholder="Teléfono" name="Telefono">
            </div>
            <div class="col-6">
              <h5>Ingrese su Número de Documento</h5>
                <input type="tel" class="form-control input" placeholder="Numero de documento" name="Id_Empleado">
            </div>
        </div>
          <br>
          <br>
        </form> 
        <div class="row">
          <div class="col-6">
              <button class="boton" name="EnviarD" type="submit">Enviar</button>
          </div>
          <div class="col-6">
            <button class="boton"><a style="color:white;" href="index/index.php">Volver</a></button>
          </div>
        </div>
    </div>
</body>
</html>