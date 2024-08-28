<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/index.css">
    <link rel="stylesheet" href="css/main.css">
</head>
<body>
    <header>
        <div class="prese">
            <h1>Sistema de Gestión de Notas Estudiantiles</h1>
            <div class="logo">
                <img src="Imagenes/sanmiguel.png" alt="Logo San Miguel">
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
                <li><a class="nav" href="http://localhost:8080/escuela-local/html/cargaProfesores.php">Profesor</a></li>
                <li><a class="nav" href="http://localhost:8080/escuela-local/html/cargaCurso.php">Curso</a></li>
                <li><a class="nav" href="http://localhost:8080/escuela-local/html/cargaMateria.php">Materia</a></li>
            </ul>
            <img class="Logo2" src="Imagenes/sanmiguel.png" alt="Logo San Miguel">
        </nav>        
    </header>
    <img class="fondo" src="Imagenes/muni.jpeg" alt="#">
    <script src="JavaScript/menu.js"></script>
</body>
</html>
