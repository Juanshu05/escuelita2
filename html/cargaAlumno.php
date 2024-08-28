<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gestion Estudiantil</title>
    <link rel="stylesheet" href="../css/indexinscrip.css">
    <link rel="stylesheet" href="../css/index.css">
    <link rel="stylesheet" href="../css/header.css">
    <link rel="stylesheet" href="../css/main.css">
</head>
<body>
    <header>
        <div class="prese">
            <h2>Sistema de Gestión de Notas Estudiantiles</h2>
        </div>
    </header>
    <!-- Contenedor para alinear las tablas -->
        <form class="Tabla" method="POST" action="../php/cargaEstudiantes.php">
            <input type="number" name="CUIL" placeholder="CUIL_Alumno"> <br>
            <input type="text" name="nombre" placeholder="Nombre"> <br>
            <input type="text" name="apellido" placeholder="Apellido"> <br>
            <select name="sexo">
                <option value="masculino">Masculino</option>
                <option value="femenino">Femenino</option>
                <option value="otro">Otro</option>
            </select> <br>
            <input type="date" name="fechaNacimiento" placeholder=""> <br>
            <input type="text" name="nacionalidad" placeholder="Nacionalidad"> <br>
            <input type="text" name="calle"         placeholder="Calle"> <br>
            <input type="text" name="altura"        placeholder="Altura"> <br>
            <input type="text" name="municipio"     placeholder="Municipio"> <br>
            <input type="text" name="numTutor"      placeholder="Numero del Tutor"> <br>
            <input type="hidden" name="estado" value="activo" >
            <input type="hidden" name="rol" value="alumno">
            <input type="submit" >
        </form>
</body>
</html>