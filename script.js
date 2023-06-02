
// Menú wrapper
var menuWrapper = document.getElementById("menuWrapper");
var menuToggle = document.getElementById("menuToggle");
var wrapperMenu = document.getElementById("wrapperMenu");
var menu = document.getElementById("menu");
function toggleMenu() {
  wrapperMenu.classList.toggle("open");
}

function checkWindowSize() {
  if (window.innerWidth < 1030) {
    menuWrapper.style.display = "block";
    menu.style.display = "none";
  } else {
    menu.style.display = "block";
    menuWrapper.style.display = "none";
    //wrapperMenu.classList.remove("open");
  }
}

menuToggle.addEventListener("click", toggleMenu);
window.addEventListener("resize", checkWindowSize);

// Verificar el tamaño de la ventana al cargar la página
checkWindowSize();