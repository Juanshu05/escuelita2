<?php 
	include("conexion.php");
	$sexo=$_POST['sexo'];
	if ($sexo=="1"){
		$sexoAlfabetico="Masculino";
	}else if($sexo=="2"){
		$sexoAlfabetico="Femenino";
	}else if ($sexo=="3"){
		$sexoAlfabetico="Otro";
	}

	$rol=$_POST['rol'];
	if ($rol=='2'){
		$rolPersona='profesor';
	}

    $tipoTitulo=$_POST['tipoTitulo'];
    if ($tipoTitulo=="1"){
        $tituloProfesor="Universitario";
    }else if($tipoTitulo=="2"){
        $tituloProfesor="terciario";
    }else if($tipoTitulo=="3"){
        $tituloProfesor=="Otro";
    }

	$conexion = mysqli_connect($host,$user,$pwd,$db) or die("Fallo de conexión");
	$cargaDatosPersonales= "insert into personas (CUIL,nombre, apellido, genero, fechaNac, nacionalidad, calle, altura, municipio,rol) 
	values
	('$_POST[CUIL]','$_POST[nombre]','$_POST[apellido]','$sexoAlfabetico','$_POST[fechaNacimiento]','$_POST[nacionalidad]','$_POST[calle]','$_POST[altura]','$_POST[municipio]','$rolPersona')";
	mysqli_query($conexion, $cargaDatosPersonales) or die ("Fallo de consulta a la hora d0e cargar a la tabla 'datos personales'");
	echo "datos cargados de la tabla datos personales";
	
	$cargaProfesional = "insert into profesional 
	(fechaIngeso, titulo, tipoTitulo, institucionEgreso, fechaEgreso) 
	values
	('$_POST[fechaIngreso]'),'$tituloProfesor','$_POST[institucion]','$_POST[fechaEgreso]')";
	mysqli_query($conexion, $cargaProfesional) or die ("Fallo de consulta a la hora de cargar los datos a la tabla 'alumnos'");
	echo "datos cargados de la tabla alumnos "; 
	
	$cargaInformacionContacto= "insert into informacioncontacto 
	(numCelular,numTelefono,correoElectronico) 
	values
	('$_POST[numCelular]','$_POST[numTelefono]','$_POST[correoElectronico]')";
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
