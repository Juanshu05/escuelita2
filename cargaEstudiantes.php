<?php 
	include("conexion.php");

	$con = mysqli_connect($host,$user,$pwd,$db) or die("Fallo de conexión");

	$query = "insert into alumno 
	(CUIL) 
	values
	('$_POST[CUIL_Alumno]')";

	mysqli_query($con, $query) or die ("Fallo de consulta");
	echo "datos cargados";
    
?>
