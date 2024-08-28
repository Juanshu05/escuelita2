// JavaScript: menu.js

document.getElementById('openMenu').addEventListener('click', function() {
    document.querySelector('.nav-list').style.display = 'flex';  // Muestra el menú
    this.style.display = 'none';  // Oculta el botón "Abrir"
    document.getElementById('closeMenu').style.display = 'block';  // Muestra el botón "Cerrar"
});

document.getElementById('closeMenu').addEventListener('click', function() {
    document.querySelector('.nav-list').style.display = 'none';  // Oculta el menú
    this.style.display = 'none';  // Oculta el botón "Cerrar"
    document.getElementById('openMenu').style.display = 'block';  // Muestra el botón "Abrir"
});
