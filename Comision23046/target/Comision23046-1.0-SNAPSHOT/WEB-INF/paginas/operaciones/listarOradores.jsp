<%-- 
    Document   : listarOradores
    Created on : 13 jul 2023, 22:00:56
    Author     : MAURICIO
--%>

<%@taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<fmt:setLocale value="es_AR"/>
<html>
    <head>
        <title>Listado de Oradores</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/382381b436.js" crossorigin="anonymous"></script>
    </head>
    <body style="background-image: linear-gradient( #191654, #43c6ac);background-size: cover;background-repeat: no-repeat;background-repeat: no-repeat;">
        <!-- 
        <section id="oradores">
            <div class="container">
                <div class="row">
                    <div class="col-md-9">
                        <div class="card">
                            <div class="card-header">
                                <h4>Listado de Oradores</h4>
                            </div>

                            <table class="table table-striped">
                                <thead class="thead-blue">
                                    <tr class="<c:if test="${status.count % 2 == 0}">celeste</c:if><c:if test="${status.count % 2 != 0}">azul</c:if>">
                                        <tr>
                                            <th>#</th>
                                            <th>Nombre</th>
                                            <th>Apellido</th>
                                            <th>Tecnologia</th>
                                            <th>Descripcion</th>
                                            <th>-</th>
                                        </tr>
                                    </thead>

                                    <tbody>
        <c:forEach var="orador" items="${oradores}" varStatus="status">
            <tr>
                <td>${status.count}</td>
                <td>${orador.nombre}</td>
                <td>${orador.apellido}</td>
                <td>${orador.tecnologia}</td>
                <td>${orador.descripcion}</td>
                <td>
                    <a href="${pageContext.request.contextPath}/servletControlador?accion=editar&idOrador=${orador.idorador}" class="btn btn-secondary">
                        <i class=" fas fa-pen"></i>
                        Editar
                    </a>
                </td>
            </tr>
        </c:forEach>
    </tbody>
</table>




</div>  
</div>


</div>
</div>
</section>


<section id="oradores">
<div class="container">
<div class="row">
<div class="col-md-9">
<div class="card">
<div class="card-header bg-primary text-white">
    <h4>Listado de Oradores</h4>
</div>
<div class="input-group">
    <input class="form-control my-0 py-1 pl-3" type="text" placeholder="Buscar orador" aria-label="Search">

    <a class="btn btn-info">
        <i class="fa fa-search " aria-hidden="true"></i>
    </a>

</div>

<table class="table table-info" >
    <thead >
        <tr>
            <th>#</th>
            <th>Nombre</th>
            <th>Apellido</th>
            <th>Tecnologia</th>
            <th>Descripcion</th>
            <th>-</th>
        </tr>
    </thead>

    <tbody>
        <c:forEach var="orador" items="${oradores}" varStatus="status">
            <tr >
                <td>${status.count}</td>
                <td>${orador.nombre}</td>
                <td>${orador.apellido}</td>
                <td>${orador.tecnologia}</td>
                <td>${orador.descripcion}</td>
                <td>
                    <a href="${pageContext.request.contextPath}/servletControlador?accion=editar&idOrador=${orador.idorador}" class="btn btn-info">
                        <i class="fas fa-pen"></i>
                        Editar
                    </a>
                </td>
            </tr>
        </c:forEach>
    </tbody>
</table>
</div>
</div>
</div>
</div>
</section>
        -->
        <section id="oradores"style=" display: flex;         min-height: 90vh;">
            <div class="container">
                <div class="row">
                    <div class="col-md-9">
                        <div class="card">
                            <div class="card-header bg-primary text-white" style="font-weight: bold;">
                                <h4>Listado de Oradores</h4>
                            </div>
                            <form id="search-form" class="input-group" style="background-color: #bc4ed8">
                                <input id="search-input" class="form-control my-0 py-1 pl-3" type="text" placeholder="Buscar orador" aria-label="Search" style="color: purple; font-weight: bold;">
                                <div class="input-group-append">
                                    <button class="btn" style="background-color: purple; border-color: purple; color: white;" type="submit">
                                        <i class="fa fa-search" aria-hidden="true"></i>
                                    </button>
                                </div>
                            </form>

                            <table id="oradores-table" class="table table-info">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Nombre</th>
                                        <th>Apellido</th>
                                        <th>Tecnologia</th>
                                        <th>Descripcion</th>
                                        <th>-</th>
                                    </tr>
                                </thead>

                                <tbody>
                                    <c:forEach var="orador" items="${oradores}" varStatus="status">
                                        <tr>
                                            <td>${status.count}</td>
                                            <td>${orador.nombre}</td>
                                            <td>${orador.apellido}</td>
                                            <td>${orador.tecnologia}</td>
                                            <td>${orador.descripcion}</td>
                                            <td>
                                                <a href="${pageContext.request.contextPath}/servletControlador?accion=editar&idOrador=${orador.idorador}" class="btn btn-info">
                                                    <i class="fas fa-pen"></i>
                                                    Editar
                                                </a>
                                               
                                            </td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </section>







        <jsp:include page="/WEB-INF/paginas/operaciones/agregarOrador.jsp"/>                
    </body>
</html>
<script>
    document.getElementById("search-form").addEventListener("submit", function (event) {
        event.preventDefault(); // Evitar que se envíe el formulario

        var searchInput = document.getElementById("search-input").value.toLowerCase();
        var tableRows = document.getElementById("oradores-table").getElementsByTagName("tbody")[0].getElementsByTagName("tr");

        for (var i = 0; i < tableRows.length; i++) {
            var rowData = tableRows[i].textContent.toLowerCase();

            if (rowData.indexOf(searchInput) > -1) {
                tableRows[i].style.display = "";
            } else {
                tableRows[i].style.display = "none";
            }
        }
    });
</script>