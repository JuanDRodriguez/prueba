<?php
class Conexion {
    public function conectar(){
          //$link = new PDO("mysql:host=localhost;dbname=portaladd","root","");
          //$link = new PDO("mysql:host=10.11.1.29;dbname=accesos","pakal","Lo5w4rr3n%");
          $link = mysqli_connect("localhost","root","root","portal_acceso_db");
          return $link;
  
      }
  }
  
?>