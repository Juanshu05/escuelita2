<?php
$sexo=$_POST['sexo'];
if ($sexo=="1"){
    $sexoAlfabetico="Masculino";
}
else if($sexo=="2"){
    $sexoAlfabetico="Femenino";
}
else if ($sexo=="3"){
    $sexoAlfabetico="Otro";
}
echo($sexoAlfabetico);

include("conexion.php");
$conexion = mysqli_connect($host,$user,$pwd,$db) or die("Fallo de conexión");

$cargaProfesores = "insert into profesores 
(CUIL,numCelular) 
values
('$_POST[CUIL_Alumno]','$_POST[numCelular]')";

mysqli_query($conexion, $cargaProfesores) or die ("Fallo de consulta a la hora de cargar los datos a la tabla 'alumnos'");
echo "datos cargados de la tabla alumnos "; 
// sexo

$cargaDatosPersonales= "insert into datospersonales (CUIL_Alumno,nombre, apellido, fechaNac, nacionalidad, calle, altura, localidad, sexo) 
values
('$_POST[CUIL_Alumno]','$_POST[nombre]','$_POST[apellido]','$_POST[fechaNacimiento]','$_POST[nacionalidad]','$_POST[calle]','$_POST[altura]','$_POST[localidad]','$sexoAlfabetico')";

mysqli_query($conexion, $cargaDatosPersonales) or die ("Fallo de consulta a la hora de cargar a la tabla 'datos personales'");
echo "datos cargados de la tabla datos personales";


?>