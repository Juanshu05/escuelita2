<?php 
	include("conexion.php");

	##var_dump($_POST);

	$conexion = mysqli_connect($host,$user,$pwd,$db) or die("Fallo de conexión");
	$cargaDatosPersonales= "insert into personas (CUIL,nombre, apellido, genero, fechaNac, nacionalidad, calle, altura, municipio, rol) 
	values
	('$_POST[CUIL]','$_POST[nombre]','$_POST[apellido]','$_POST[sexo]','$_POST[fechaNacimiento]','$_POST[nacionalidad]','$_POST[calle]','$_POST[altura]','$_POST[municipio]','$_POST[rolPersona]')";
	mysqli_query($conexion, $cargaDatosPersonales) or die ("Fallo de consulta a la hora d0e cargar a la tabla 'datos personales'");
	echo "datos cargados a la tabla datos personales";
	
	$cargaAlumnos = "insert into alumno 
	(estado) 
	values
	('$_POST[estadoPersona]')";
	mysqli_query($conexion, $cargaAlumnos) or die ("Fallo de consulta a la hora de cargar los datos a la tabla 'alumnos'");
	echo "datos cargados a la tabla alumnos "; 
	
	$cargaInformacionContacto= "insert into informacioncontacto 
	(numTutor) 
	values
	('$_POST[numTutor]')";
	mysqli_query($conexion, $cargaInformacionContacto) or die ("Fallo de consulta a la hora de cargar a la tabla 'informacion de contacto'");
	echo "datos de contacto cargados exitosamente"

?>
<html>
	<body>
		<a href="../html/cargaAlumno.php">
			<button> Volver al inicio</button>
		</a>

	</body>

</html>
