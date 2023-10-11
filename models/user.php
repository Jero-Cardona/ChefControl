<?php
require_once '../libraries/conexion.php';

if(!empty($_POST["EnviarDatos"])) {
  if (empty($_POST["Id_Empleado"]) or empty($_POST["Nombre"]) or empty($_POST["Apellido"]) or empty($_POST["Telefono"]) or empty($_POST["Id_Rol"])) {

    echo "Uno de los campos está vació. Llenelo, por favor."; 

  }else{

    $id_empleado=$_POST["Id_Empleado"];
    $nombre=$_POST["Nombre"];
    $apellido=$_POST["Apellido"];
    $telefono=$_POST["Telefono"];
    $id_rol=$_POST["Id_Rol"];

    $sql=$mysql->query(" INSERT INTO tbl_usuarios(Id_Empleado,Nombre,Apellido,Telefono,Id_Rol) VALUES ('$id_empleado','$nombre','$apellido','$telefono','$id_rol') ");
    if($sql==1){
      echo "Usuario registrado correctamente.";

    }else{
      echo "Usuario no registrado. Hay un error";
    }

  }

}

?>
