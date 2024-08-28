<?php
    include("conexion.php");
    $conexion = mysqli_connect($host,$user,$pwd,$db) or die("Fallo de conexión");

    $cargaCurso="insert into curso (nivel,anio,division,orientacion,turno) values ('$_POST[nivel]','$_POST[anio]','$_POST[division]','$_POST[orientacion]','$_POST[turno]')";

    mysqli_query($conexion,$cargaCurso) or die("el diablo");
?>