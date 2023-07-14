<%-- 
    Document   : listarOradores
    Created on : 13 jul 2023, 22:00:56
    Author     : MAURICIO
--%>

<%@taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:setLocale value="es_AR"/>
<section id="oradores">
    <div class="container">
        <div class="row">
            <div class="col-md-9">
                <div class="card">
                    <div class="card-header">
                        <h4>Listado de Oradores</h4>
                    </div>
                    
                    <table class="table table-striped">
                        <thead class="thead-dark">
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
                                            <i class=" fas fa-angle-double-right"></i>
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
                     