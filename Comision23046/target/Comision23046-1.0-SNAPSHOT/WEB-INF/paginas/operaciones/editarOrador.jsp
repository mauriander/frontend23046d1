<%-- 
    Document   : editarOrador
    Created on : 13 jul 2023, 22:00:25
    Author     : MAURICIO
--%>

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

        <jsp:include page="../comunes/header.jsp"/>
        <form action="${pageContext.request.contextPath}/servletControlador?accion=modificar&idOrador=${orador.idorador}" method="POST" class="was-validated">
            <jsp:include page="../comunes/botonesNavegacionEditar.jsp"/>

            <section id="details">
                <div class="container">
                    <div class="row">
                        <div class="col">
                            <div class="card">
                                <div class="card-header">
                                    <h4>Editar Orador</h4>
                                </div>
                                <div class="card-body">
                                    <div class="form-group">
                                        <label for="nombre">Titulo</label>
                                        <input type="text" class="form-control" name="nombre" value="${orador.nombre}" required/>
                                    </div>

                                    <div class="form-group">
                                        <label for="apellido">Apellido</label>
                                        <input type="text" class="form-control" name="apellido" value="${orador.apellido}" required/>
                                    </div>
                                    
                                     <div class="form-group">
                                        <label for="tecnologia">Tecnologia</label>
                                        <input type="text" class="form-control" name="tecnologia" value="${orador.tecnologia}" required/>
                                     </div><!-- comment -->
                                     
                                      <div class="form-group">
                                        <label for="descripcion">Descripcion</label>
                                        <input type="text" class="form-control" name="descripcion" value="${orador.descripcion}" required/>
                                      </div><!-- comment -->

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

        </form>




        <jsp:include page="../comunes/footer.jsp"/>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
    </body>

</html>