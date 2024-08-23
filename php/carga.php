<?php 
	include("conexion.php");

	$con = mysqli_connect($host,$user,$pwd,$db) or die("Fallo de conexión");

	$query = "insert into alumnos (ID_ALUMNO, DNI, cedula, nombre, legajo, libro, folio, fecha_Nacimiento, hora_Nacimiento, localidad_Nacimiento, localidad, municipio, provincia, nacionalidad, nombre_Calle, numero_Casa, piso, numero_Departamento) values ('$_POST[ID_ALUMNO]', '$_POST[DNI]', '$_POST[cedula]', '$_POST[nombre]', '$_POST[legajo]', '$_POST[libro]',  '$_POST[folio]', '$_POST[fecha_Nacimiento]', '$_POST[hora_Nacimiento]', '$_POST[localidad_Nacimiento]', '$_POST[localidad]', '$_POST[municipio]', '$_POST[provincia]','$_POST[nacionalidad]', '$_POST[nombre_Calle]', '$_POST[numero_Casa]', '$_POST[piso]', '$_POST[numero_Departamento]')";

	mysqli_query($con, $query) or die ("Fallo de consulta");
	echo "datos cargados";
    echo "hola";
?>
