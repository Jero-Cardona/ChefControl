<?php
require_once '../libraries/conexion.php';

class Receta {

    private $Id_Receta;
    private $NombreR;
    private $Descripcion;
    private $CostoT;
    private $Contribucion;

    public function InsertarDR(){
        $sql = "INSERT INTO tbl_receta(Id_Receta, Nombre, Descripcion, Costo_Total, Contribucion) VALUES (?, ?, ?, ?, ?)";
        $stmt = Conexion::conect()->prepare($sql);
    }
}




?>