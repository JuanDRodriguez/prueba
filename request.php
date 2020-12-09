<?php
require_once "Conexion.php";
class request extends Conexion{
   
	public function setRegistroUser($datoUser){
		$conexion = Conexion::conectar();
		$sql = "INSERT INTO usuarios VALUES ( '" . $datoUser["user"] . "', '". $datoUser["name"] ."',  '". $datoUser["correo"] ."', '". $datoUser["password"] ."', '". $datoUser["profile"] ."')";
		$query = mysqli_query($conexion,$sql);
    	if($query){
        	 return "success";
    	}else{
				echo "Error en el query" . mysqli_error($conexion);
				return "error";
    	}
		
	
	}
	public function Login($user){
		$conexion = Conexion::conectar();	
		$sql = "SELECT DISTINCT  cuadrilla FROM personal WHERE usuario = '" . $user . "'";
    	$query = mysqli_query($conexion,$sql);
    	if($query){
        	return mysqli_fetch_all($query);
    	}else{
       		 echo "Error en el query" . mysqli_error($conexion);
    	}
	}
}
?>