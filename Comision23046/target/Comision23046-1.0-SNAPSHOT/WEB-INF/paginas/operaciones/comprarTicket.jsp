<%-- 
    Document   : comprar
    Created on : 14 jul 2023, 21:07:19
    Author     : MAURICIO
--%>

<!--
<section class="carde" style="padding-top: 12%;">
    <div class="card-container">
        <div class="card" style="text-align: center; border-color: blue; border-width: 4px;">

            <h2>ESTUDIANTE</h2>
            <p>Tienen un descuento       
            </p>
            <h2 style="font-weight: bolder;">80%</h2>
            <p>*presentar documentacion       
            </p>
        </div>

        <div class="card" style="text-align: center; border-color: lightblue; border-width: 4px;">

            <h2>TRAINEE</h2>
            <p>Tienen un descuento       
            </p>
            <h2 style="font-weight: bolder;">50%</h2>
            <p>*presentar documentacion       
            </p>
        </div>

        <div class="card" style="text-align: center; border-color:yellow; border-width: 4px;">

            <h2>JUNIOR</h2>
            <p>Tienen un descuento       
            </p>
            <h2 style="font-weight: bolder;">15%</h2>
            <p>*presentar documentacion       
            </p>
        </div>
    </div>
</section>
<div class="midd" style="text-align: center;">
    <P>VENTA</P>
    <h2>VALOR DEL TICKET $200</h2>
</div>
<div id="formulariocompra" class="formcompra">
    <div class="mb-3">
        <div class="input-wrapper">
            <input type="text" id="enombre" placeholder="Nombre" formControlName="nombre" />
        </div>
        <div class="input-wrapper">
            <input type="text" id="eapellido" placeholder="Apellido" formControlName="apellido" />
        </div>
    </div>

    <div class="mb-3">
        <input type="email" id="email" placeholder="Correo" formControlName="correo" />
    </div>

    <div class="mb-3">
        <div class="input-wrapper">
            <label for="cantidad">Cantidad:</label>
            <input type="number" id="cantidad" placeholder="Cantidad" formControlName="cantidad" min="1" />
        </div>
        <div style="display: table-column;width: 100%;">
            <label for="opciones"> Categoria:</label>
            <div >

                <select id="opciones" name="opciones" style="width: 100%;background:transparent;
padding: 16px;        border: 1px solid #ccc;
                        border-radius: 4px;">
                    <option value="15">JUNIOR</option>
                    <option value="50">TRAINEE</option>
                    <option value="80">ESTUDIANTE</option>
                </select>

            </div>
        </div>  
    </div>

    <div class="mb-3" style="background-color: lightblue; border-radius: 8px;">
        <p id="total" style="font-size: 20px; margin-left: 8px;"></p>
    </div>

    <div id="botones" class="botones">
        <input type="submit" id="borrarBtn" onclick="borrarFormulario()" value="Borrar" style="margin-right: 16px;">
        <input  type="submit" id="resumenBtn" onclick="calcularTotal2()" value="Resumen">
    </div>
</div>
-->

<!-- ---------------------------------------------------------------------- -->
<%@taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
        <script src="https://kit.fontawesome.com/382381b436.js" crossorigin="anonymous"></script>
        <title>Editar Orador</title>

    </head>
    <body>
<div class="container">
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
    <form acceptCharset="UTF-8">
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
         <input  type="submit" id="resumenBtn" onclick="calcularTotal2()" value="Resumen" value="${total}">
 <p id="total">value="${total}</p>
 
 
 
        <div class="alert alert-primary border-0 mb-3" role="alert" id="total">
            Total a pagar   
        </div>
        <p id="total" style="font-size: 20px; margin-left: 8px;"></p>
        <div id="mensajes">
 
        </div>
        <div class="row">
            <!-- <div class="col-md-6 mb-3">
                <button type="submit" id="borrarBtn" onclick="borrarFormulario()" class="btn btn-light btn-block">Borrar</button>
            </div>-->
            <div class="col-md-6 mb-3">
                <button type="submit" id="resumenBtn" onclick="calcularTotal2()" class="btn btn-success btn-block">Resumen</button>
            </div>
        </div>




    </form><!--end form -->
</div>



    <jsp:include page="../comunes/footer.jsp"/>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
    </body>

</html>






