<%-- 
    Document   : comprar
    Created on : 14 jul 2023, 22:56:37
    Author     : MAURICIO
--%>

<%@taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:setLocale value="es_AR"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
        <link rel="shortcut icon" href="#">
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <title>Compra</title>



    </head>
    <body  >

        <jsp:include page="WEB-INF/paginas/comunes/header.jsp"/>

        <div class="container" style="padding-top: 32px;" >
            <div class="row d-flex flex-wrap justify-content-center mx-6">
                <div class="col-3 text-center border border-info color-box m-1 p-1">
                    <h4>Estudiante</h4>
                    <p>Tiene un descuento</p>
                    <b>80%</b>
                    <p>* presentar documentación</p>
                </div>
                <div class="col-3 text-center border border-info color-box m-1 p-1">
                    <h4>Trainee</h4>
                    <p>Tiene un descuento</p>
                    <b>50%</b>
                    <p>* presentar documentación</p>
                </div>
                <div class="col-3 text-center border border-warning color-box m-1 p-1">
                    <h4>Junior</h4>
                    <p>Tiene un descuento</p>
                    <b>15%</b>
                    <p>* presentar documentación</p>
                </div>
            </div>
        </div>



        <div class="container w-50 text-start my-5" id="tickets">
            <p class="text-center mt-4 mb-0">VENTA</p>
            <p class="fs-2 text-center">VALOR DE TICKET $200</p>
            <form>
                <div class="row">
                    <div class="col-sm-auto col-md-6 my-1 mb-3">
                        <input type="text" id="name-ticket" class="form-control" placeholder="Nombre"
                               aria-label="First name" required>
                    </div>
                    <div class="col-sm-auto col-md-6 my-1 mb-3">
                        <input type="text" id="last-name-ticket" class="form-control" placeholder="Apellido"
                               aria-label="Last name" required>
                    </div>
                    <div class="mb-3"><label for="email-ticket">Email address</label>
                        <input type="email" class="form-control" id="email-ticket" aria-describedby="emailHelp"
                               placeholder="Correo" required>
                    </div>
                    <div class="input-wrapper col-md-6 mb-3">
                        <label for="cantidad">Cantidad:</label>
                        <input class="form-control" type="number" id="cantidad" placeholder="Cantidad" formControlName="cantidad" min="1" />
                    </div>

                    <div class="form-group col-md-6 mb-3">
                        <label for="opciones">Categoría</label>

                        <select class="form-control" id="opciones" name="opciones" required>
                            <option value="" disabled selected>Categoría</option>
                            <option value="15">JUNIOR</option>
                            <option value="50">TRAINEE</option>
                            <option value="80">ESTUDIANTE</option>
                        </select>
                    </div>
                </div>
                <!-- 
                <input  type="submit" id="resumenBtn" onclick="calcularTotal2()" value="Resumen" >
                <button type="button" id="resumenBtn" onclick="enviarFormulario()">Resumen</button>
                comment -->
          



                <div class="alert alert-primary border-0 mb-3" role="alert" id="total">
                    Total a pagar   
                </div>
                
                
                <div class="row"style="min-height: 40vh;">
                     <div class="col-md-6 mb-3">
                        <button type="submit" id="borrarBtn" onclick="borrarFormulario()" class="btn btn-light btn-block">Borrar</button>
                    </div>
                    <div class="col-md-6 mb-3">
                        <button type="button" id="resumenBtn" onclick="calcularTotal2()"class="btn btn-success btn-block" >Resumen</button>
                    </div>
                </div>




            </form><!--end form -->
        </div>



        <jsp:include page="WEB-INF/paginas/comunes/footer.jsp"/>


        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"
        ></script>
        <!--
            <script src="${pageContext.request.contextPath}/script.js">
        -->
      
    </body>

</html>
 
  <script>
                    console.log("Hola mundo");
                    function mostrarMensaje(mensaje) {
                        var divMensaje = document.createElement("div");
                        divMensaje.textContent = mensaje;
                        document.getElementById("mensajes").appendChild(divMensaje);
                    }
                    function calcularTotal2() {
                        var selecto = document.getElementById("opciones");
                        var cantidad = document.getElementById("cantidad").value;
                        var opc = selecto.options[selecto.selectedIndex].value;
                        var total2 = (200 - (200 * opc / 100)) * cantidad;
                        console.log(total2);

                        document.getElementById("total").textContent = "Total a Pagar: $ " + total2;
                        document.getElementById("total2").textContent = total2;

                    }
                    function borrarFormulario() {
                        document.getElementById("eapellido").value = "";
                        document.getElementById("enombre").value = "";
                        document.getElementById("email").value = "";
                        document.getElementById("cantidad").value = "";
                    }
        </script>
      