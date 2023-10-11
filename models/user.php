<?php


if ($_SERVER["REQUEST_METHOD"] === "POST") {
  require_once '../libraries/conexion.php';
  // Obtiene los datos del formulario POST y los escapa para evitar problemas de seguridad
  $Id_Empleado = mysqli($mysql, $_POST["Id_Empleado"]);
  $Nombre = mysqli($mysql, $_POST["Nombre"]); // Corregir el nombre aquí
  $Apellido = mysqli($mysql, $_POST["Apellido"]);
  $Telefono = mysqli($mysql, $_POST["Telefono"]);
  $Id_Rol = mysqli($mysql, $_POST["Id_Rol"]);
  // Consulta SQL con valores escapados
  $sql = "INSERT INTO tbl_usuarios(Id_Empleado,Nombre,Apellido,Telefono,Id_Rol)
          VALUES ('$Id_Empleado', '$Nombre', '$Apellido', '$Telefono', '$Id_Rol')";
  
  // Ejecutar la consulta
  if (mysqli_query($mysql, $sql)) {
      echo "Los datos se insertaron correctamente.";
  } else {
      echo "Problemas al insertar datos: " . mysqli_error($mysql);
  }
  
  // Cerrar la conexión
  mysqli_close($mysql);
} else {
  echo "No se han enviado datos a través del formulario ";
}


?>
