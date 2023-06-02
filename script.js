 function calcularTotal2() {
      
      var selecto = document.getElementById("opciones");
    
      var cantidad = document.getElementById("cantidad").value;
      
      var opc = selecto.options[selecto.selectedIndex].value;

      var total2= (200 - (200*opc/100)) *cantidad
      
      document.getElementById("total").textContent = "Total a Pagar: $ " + total2;
    }
 function borrarFormulario() {
  document.getElementById("eapellido").value = "";
  document.getElementById("enombre").value = "";
  document.getElementById("email").value = "";
  document.getElementById("cantidad").value = "";
    }


// Menú wrapper
// var menuWrapper = document.getElementById("menuWrapper");
// var menuToggle = document.getElementById("menuToggle");
// var wrapperMenu = document.getElementById("wrapperMenu");
// var menu = document.getElementById("menu");
// function toggleMenu() {
//   wrapperMenu.classList.toggle("open");
// }

// function checkWindowSize() {
//   if (window.innerWidth < 1030) {
//     menuWrapper.style.display = "block";
//     menu.style.display = "none";
//   } else {
//     menu.style.display = "block";
//     menuWrapper.style.display = "none";
//     //wrapperMenu.classList.remove("open");
//   }
// }

// menuToggle.addEventListener("click", toggleMenu);
// window.addEventListener("resize", checkWindowSize);

// // Verificar el tamaño de la ventana al cargar la página
// checkWindowSize();