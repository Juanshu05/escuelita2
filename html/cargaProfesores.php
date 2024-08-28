<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../css/indexinscrip.css">
    <link rel="stylesheet" href="../css/header.css">
    <link rel="stylesheet" href="../css/main.css">
</head>
<body>
<header>
    <div class="prese">
        <h1>Sistema de Gestión de Notas Estudiantiles</h1>
        <div class="logo">
            <img src="../Imagenes/sanmiguel.png" alt="Logo San Miguel">
        </div>
    </div>
    <div class="menu-buttons">
        <button id="openMenu" class="botone">
            <svg width="60px" height="60px" viewBox="-2.4 -2.4 28.80 28.80" xmlns="http://www.w3.org/2000/svg" fill="#ffffff" stroke="#ffffff">
                <g id="SVGRepo_bgCarrier" stroke-width="0">
                    <rect x="-2.4" y="-2.4" width="28.80" height="28.80" rx="0" fill="#2b8aaf" stroke-width="0"/>
                </g>
                <g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"/>
                <g id="SVGRepo_iconCarrier">
                    <rect x="0" fill="none" width="24" height="24"/>
                    <g>
                        <path d="M4 19h16v-2H4v2zm16-6H4v2h16v-2zM4 9v2h16V9H4zm16-4H4v2h16V5z"/>
                    </g>
                </g>
            </svg>
        </button>
    </div>
    <nav class="nav-list">
        <div class="menu-buttons">
            <button id="closeMenu" class="botone2">
                <svg width="60px" height="60px" viewBox="-2.4 -2.4 28.80 28.80" xmlns="http://www.w3.org/2000/svg" fill="#ffffff" stroke="#ffffff">
                    <g id="SVGRepo_bgCarrier" stroke-width="0">
                        <rect x="-2.4" y="-2.4" width="28.80" height="28.80" rx="0" fill="#333" stroke-width="0"/>
                    </g>
                    <g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"/>
                    <g id="SVGRepo_iconCarrier">
                        <rect x="0" fill="none" width="24" height="24"/>
                        <g>
                            <path d="M4 19h16v-2H4v2zm16-6H4v2h16v-2zM4 9v2h16V9H4zm16-4H4v2h16V5z"/>
                        </g>
                    </g>
                </svg>
            </button>
        </div>
        <ul>
            <li><a class="nav" href="http://localhost:8080/escuela-local/html/cargaAlumno.php">Alumno</a></li>
            <li><a class="nav" href="http://localhost:8080/escuela-local/html/cargaCurso.php">Curso</a></li>
            <li><a class="nav" href="http://localhost:8080/escuela-local/html/cargaMateria.php">Materia</a></li>
            <li><a class="nav" href="http://localhost:8080/escuela-local/">Pagina Principal</a></li>
        </ul>
        <img class="Logo2" src="../Imagenes/sanmiguel.png" alt="Logo San Miguel">
    </nav>        
</header>
<div class="content-wrapper">
    <form class="Tabla" method="POST" action="cargaProfesor.php">
        <input type="number" name="CUIL" placeholder="CUIL"><br>
        <input type="text" name="nombre" placeholder="Nombre"><br>
        <input type="text" name="apellido" placeholder="Apellido"><br>
        <select name="sexo">
            <option value="1">Masculino</option>
            <option value="2">Femenino</option>
            <option value="3">Otro</option>
        </select><br>
        <input type="date" name="fechaNacimiento" placeholder=""><br>
        <input type="text" name="nacionalidad" placeholder="Nacionalidad"><br>
        <input type="text" name="calle" placeholder="Calle"><br>
        <input type="text" name="altura" placeholder="Altura"><br>
        <input type="text" name="municipio" placeholder="Localidad"><br>
        <input type="text" name="numCelular" placeholder="Número de Celular"><br>
        <input type="text" name="numTelefono" placeholder="Número de Teléfono"><br>
        <input type="text" name="correoElectronico" placeholder="Correo Electrónico"><br>
        <input type="hidden" name="rol" value="2">
        <input type="date" name="fechaIngreso" placeholder="Fecha de Ingreso a la Docencia"><br>
        <input type="text" name="titulo" placeholder="Título que Posee"><br>
        <select name="tipoTitulo">
            <option value="1">Universitario</option>
            <option value="2">Terciario</option>
            <option value="3">Otro</option>
        </select><br>
        <input type="text" name="institucion" placeholder="Institución en la que Egresó"><br>
        <input type="date" name="fechaEgreso" placeholder="Fecha de Egreso"><br>
        <input type="submit" value="Enviar">
    </form>
</div>
<script src="../JavaScript/menu.js"></script>
</body>
</html>
