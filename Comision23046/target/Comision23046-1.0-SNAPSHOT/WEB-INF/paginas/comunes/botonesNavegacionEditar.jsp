<%-- 
    Document   : botonesNavegacionEditar
    Created on : 13 jul 2023, 21:58:47
    Author     : MAURICIO
--%>


<section id="actions" class="py-4 mb-4 bg-light">
    <div class="container">
        <div class="row">
            
            <div class="col-md-3">
                <a href="${pageContext.request.contextPath}/servletControlador" class="btn btn-light btn-block">
                    <i class="fas fa-arrow-left"></i>
                    Regresar a la lista
                </a>
            </div>
            
            <div class="col-md-3">
                <button type="submit" class="btn btn-success btn-block">
                    <i class="fas fa-check"></i>
                    Guardar Modificaci�n
                </button>
            </div>
            
            <div class="col-md-3">
                <a href="${pageContext.request.contextPath}/servletControlador?accion=eliminar&idOrador=${orador.idorador}"
                   class="btn btn-danger btn-block">
                    <i class="fas fa-trash"></i>
                    Eliminar Orador
                </a>
            </div>
        </div>
    </div>
</section>