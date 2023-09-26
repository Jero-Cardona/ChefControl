<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="css/estilos.css">
    <link rel="icon" href="img/logo.jpeg">
    <title>Sugerir Recetas</title>
</head>
<body class="body">
    <div class="container" style="background-color: #D5D5D5;">
        <div class="encabezado">
            <h2 class="titulo">Sugerir Recetas</h2>
        </div>
        <form>
            <div class="row">
                <h5>Ingrese el nombre de la receta</h5>
            <input type="text" class="form-control input" name="nombre-rec">
            </div>
            <div class="row">
                <h5>Ingrese los ingredientes</h5>
            <textarea cols="15" rows="6" name="ingredientes"></textarea>
            </div>
            <div class="row">
                <h5>Ingrese la preparación</h5>
            <textarea cols="20" rows="8" name="preparacion"></textarea>
            </div>
        </form>
        <div class="row">
            <div class="col-6">
                <button class="boton" name="EnviarD">Enviar</button>
            </div>
            <div class="col-6">
                <button class="boton"><a style="color:white;" href="recetas.html">Volver</a></button>
            </div>
        </div>
    </div>
</body>
</html>