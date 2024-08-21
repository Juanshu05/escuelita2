<?php 
	include("conexion.php");
	$sexo=$_POST['sexo'];
	echo $sexo;
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

	
	$conexion = mysqli_connect($host,$user,$pwd,$db) or die("Fallo de conexión");

	$cargaDatosPersonales= "insert into personas (CUIL,nombre, apellido, genero, fechaNac, nacionalidad, calle, altura, municipio,rol) 
	values
	('$_POST[CUIL]','$_POST[nombre]','$_POST[apellido]','$_POST[fechaNacimiento]','$_POST[genero]','$_POST[nacionalidad]','$_POST[calle]','$_POST[altura]','$_POST[municipio]','$_POST[rol]')";

	mysqli_query($conexion, $cargaDatosPersonales) or die ("Fallo de consulta a la hora d0e cargar a la tabla 'datos personales'");
	echo "datos cargados de la tabla datos personales";

	$cargaAlumnos = "insert into alumno 
	(CUIL,numCelularTutor) 
	values
	('$_POST[CUIL_Alumno]','$_POST[numTutor]')";

	mysqli_query($conexion, $cargaAlumnos) or die ("Fallo de consulta a la hora de cargar los datos a la tabla 'alumnos'");
	echo "datos cargados de la tabla alumnos "; 
	// sexo

?>
<html>
	<body>
		<a href="index.html">
			<button> Volver al inicio</button>
		</a>

	</body>

</html>
