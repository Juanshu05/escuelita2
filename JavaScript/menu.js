// menu.js

document.getElementById('openMenu').addEventListener('click', function() {
    document.querySelector('.nav-list').style.display = 'block';
    document.getElementById('openMenu').style.display = 'none';
});

document.getElementById('closeMenu').addEventListener('click', function() {
    document.querySelector('.nav-list').style.display = 'none';
    document.getElementById('openMenu').style.display = 'block';
});
