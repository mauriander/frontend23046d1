<%-- 
    Document   : agregarOrador
    Created on : 13 jul 2023, 22:00:10
    Author     : MAURICIO
--%>
<div class="modal fade" id="agregarOradorModal" tabindex="-1" aria-labelledby="agregarOradorModal" aria-hidden="true">
    <div class="modal-dialog modal-lg" style="background-color: black;">
        <div class="modal-content">
            <div class="modal-header bg-dark text-white">
                <h5 class="modal-title">Agregar Orador</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>

            <form action="${pageContext.request.contextPath}/servletControlador?accion=insertar" method="POST" class="was-validated">
                <div class="modal-body">
                    <div class="form-group">
                        <label for="nombre">Nombre</label>
                        <input type="text" class="form-control" name="nombre" required/>
                    </div>

                    <div class="form-group">
                        <label for="apellido">Apellido</label>
                        <input type="text" class="form-control" name="apellido" required/>
                    </div>
                    <!--
                    <div class="form-group">
                        <label for="tecnologia">Tecnologia</label>
                        <input type="text" class="form-control" name="tecnologia" required/>
                    </div> comment -->
                    <div class="form-group">
                        <label for="tecnologia">Tecnologia</label>
                        <select class="form-control" name="tecnologia" id="tecnologia" required>
                            <option value="">Seleccione una tecnología</option>
                            <option value="opcion1">Opción 1</option>
                            <option value="opcion2">Opción 2</option>
                            <option value="opcion3">Opción 3</option>
                            <option value="otro">Otra</option>
                              
                        </select>
          
                   

                    <div class="form-group">
                        <label for="descripcion">Descripcion</label>
                        <input type="text" class="form-control" name="descripcion" required/>
                    </div><!-- comment -->

                    

                    <div class="modal-footer">
                        <button class="btn btn-primary" type="submit">
                            Guardar
                        </button>
                    </div>

            </form>
        </div>
    </div>
</div>

