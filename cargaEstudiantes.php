<?php 
	include("conexion.php");
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

	$rol=$_POST['rol'];
	if ($rol=='1'){
		$rolPersona="Alumno";
	}

	$estado=$_POST['estado'];
	if ($estado=="1"){
		$estadoPersona="Activo";
	}
	
	$conexion = mysqli_connect($host,$user,$pwd,$db) or die("Fallo de conexión");
	$cargaDatosPersonales= "insert into personas (CUIL,nombre, apellido, genero, fechaNac, nacionalidad, calle, altura, municipio,rol) 
	values
	('$_POST[CUIL]','$_POST[nombre]','$_POST[apellido]','$sexoAlfabetico','$_POST[fechaNacimiento]','$_POST[nacionalidad]','$_POST[calle]','$_POST[altura]','$_POST[municipio]','$rolPersona')";
	mysqli_query($conexion, $cargaDatosPersonales) or die ("Fallo de consulta a la hora d0e cargar a la tabla 'datos personales'");
	echo "datos cargados de la tabla datos personales";
	
	$cargaAlumnos = "insert into alumno 
	(estado) 
	values
	('$estadoPersona')";
	mysqli_query($conexion, $cargaAlumnos) or die ("Fallo de consulta a la hora de cargar los datos a la tabla 'alumnos'");
	echo "datos cargados de la tabla alumnos "; 
	
	$cargaInformacionContacto= "insert into informacioncontacto 
	(numTutor) 
	values
	('$_POST[numTutor]')";
	mysqli_query($conexion, $cargaInformacionContacto) or die ("Fallo de consulta a la hora de cargar a la tabla 'informacion de contacto'");
	echo "datos de contacto cargados exitosamente"

?>
<html>
	<body>
		<a href="index.html">
			<button> Volver al inicio</button>
		</a>

	</body>

</html>
