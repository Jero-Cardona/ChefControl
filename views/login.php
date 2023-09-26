<?php
//Para registrar
include('../libraries/conexion.php');
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
  <link rel="icon" href="../img/logo.jpeg">
  <link rel="stylesheet" href="../css/style.css">
  <title>Inicio de sesión</title>
</head>
<body>
    <div class="container" style="background-color: #D5D5D5; border-radius:20px; margin-top: 100px;">      
      <div class="encabezado" style="border-radius: 10px;"> 
        <h1 class="titulo">Inicio de sesión</h1>
      </div>
      <br>
    <form action="login.php" method="POST" name="formLogin">
      <div class="row">
          <h5> Ingrese su tipo de usuario</h5>
          <div class="col-6">
              <select class="form-select input" name="TipoDocumento> 
              <option placeholder="Tipo de documento" required></option>
                  <option>Tarjeta de identidad</option>
                  <option>Cédula</option>
                  <option>Cédula de extranjería</option>
                </select>
                <input type="hidden" class="form-control input" name="id_Empleado" required>
                <br>
                <br>
          <h5> Ingrese su número de documento</h5>
                <input type="tel" class="form-control input" name="numero_documento" placeholder="Numero de documento" required>
                <br>
            <h5> Ingrese su contraseña</h5>
                <input type="password" class="form-control input" name="pass" placeholder="Ingrese su contraseña" required >
                <br>
            </div>
            <br>
            <div class="col-6">
              <img class="btn" src="../img/comida.webp" style="height: 400px; width: 600px; margin-bottom: 30px; margin-right: 10px;">
            </div>
          </div>
          <div class="row">
            <div class="col-6">
            <input type="submit" class="boton" value="Enviar Datos" style="justify-self: center; font-family: fantasy; color: white; border-radius: 10px; margin-bottom: 50px;">
            </div>
            <div class="col-6">
            <button class="boton"><a style="color:white;" href="index/index.php">Volver</a></button>
            </div>
          </div>
        </form> 
      </div>
    </body>
    </html>