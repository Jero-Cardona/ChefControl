<?php
require_once '../libraries/conexion.php';

// Obtener los datos del formulario
$id_empleado = $_POST["Id_Empleado"];
$nombre = $_POST["Nombre"];
$apellido = $_POST["Apellido"];
$telefono = $_POST["Telefono"];
$id_rol = $_POST["Id_Rol"];

// Validar los datos
if (empty($id_empleado) || empty($nombre) || empty($apellido) || empty($telefono) || empty($id_rol)) {
  echo "Todos los campos son obligatorios";
  exit;
}

// Preparar la consulta SQL para insertar los datos
$sql = "INSERT INTO tbl_usuarios (Id_Empleado, Nombre, Apellido, Telefono, Id_Rol) VALUES (?, ?, ?, ?, ?)";

// Crear un objeto de declaración preparada
$stmt = mysqli_prepare($conexion, $sql);

// Vincular los parámetros a la declaración preparada
mysqli_stmt_bind_param($stmt, "isssi", $id_empleado, $nombre, $apellido, $telefono, $id_rol);

// Ejecutar la declaración preparada
if (mysqli_stmt_execute($stmt)) {
  echo "Usuario registrado con éxito";
} else {
  echo "Error al registrar el usuario: " . mysqli_stmt_error($stmt);
}

// Cerrar la declaración preparada y la conexión
mysqli_stmt_close($stmt);
mysqli_close($conexion);


?>
