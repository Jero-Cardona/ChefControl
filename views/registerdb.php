 <?php
      if(isset($_POST['EnviarD'])){
      @$Idempleado = $_POST['Id_Empleado'];
      @$nombre = $_POST['Nombre'];
      @$apellidos =$_POST['Apellido'];
      @$Nrotel = $_POST['Telefono'];
      
   }
      include('../libraries/conexion.php');

     $insertar = "INSERT INTO tbl_usuarios (Id_Empleado, Nombre, Apellido, Telefono) VALUES ('$Idempleado', '$nombre', '$apellidos', '$Nrotel')";

     if ($conexion -> query($insertar) == true){
        header('location: index/index.php');
     }else{
        echo "No se guardó la información";
     }
  
     $conexion -> close();

?>
