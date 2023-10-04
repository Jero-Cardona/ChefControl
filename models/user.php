<?php
require_once '../libraries/conexion.php';

class Usuario {
    private $nombres;
    private $apellidos;
    private $Nrotelefono;
    private $Nrodocumento;

    public function insertarD(){
        $sql = "INSERT INTO tbl_usuarios(Id_Empleado, Nombre, Apellido, Telefono, Id_Rol) VALUES (?, ?, ?, ?, ?)";
        $stmt = Conexion::conect()->prepare($sql);
        $respuesta = $stmt->execute([$this->nombres, $this->apellidos, $this->Nrotelefono, $this->Nrodocumento]);
    }

    
}



?>
