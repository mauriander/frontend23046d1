<%-- 
    Document   : agregarOrador
    Created on : 13 jul 2023, 22:00:10
    Author     : MAURICIO
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="modal fade" id="agregarOradorModal" tabindex="-1" aria-labelledby="agregarOradorModal" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header bg-grey"style="background-color: lightblue;">
                <h5 class="modal-title">Agregar Orador</h5>
                <button type="button" class="btn-close text-white" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>

            <form action="${pageContext.request.contextPath}/servletControlador?accion=insertar" method="POST" class="was-validated">
                <div class="modal-body" style="background-image: linear-gradient(lightblue, lightcyan);">
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
                        <label for="tecnologia">Tecnología</label>
                        <select class="form-control" name="tecnologia" id="tecnologia" onchange="toggleOtraTecnologia()" required>
                            <option value="">Seleccione una tecnología</option>

                            <option value="Abap">ABAP</option>
                            <option value="Apex">Apex</option>
                            <option value="C">C</option>
                            <option value="Clojure">Clojure</option>
                            <option value="CoffeeScript">CoffeeScript</option>
                            <option value="Cpp">C++</option>
                            <option value="Crystal">Crystal</option>
                            <option value="Dart">Dart</option>
                            <option value="Dm">DM</option>
                            <option value="Elixir">Elixir</option>
                            <option value="Emacs">Emacs Lisp</option>
                            <option value="Erlang">Erlang</option>
                            <option value="Fsharp">F#</option>
                            <option value="Fortran">Fortran</option>
                            <option value="Freemarker">FreeMarker</option>
                            <option value="Go">Go</option>
                            <option value="Groovy">Groovy</option>
                            <option value="Haskell">Haskell</option>
                            <option value="Java">Java</option>
                            <option value="Javascript">JavaScript</option>
                            <option value="Jsonnet">Jsonnet</option>
                            <option value="Julia">Julia</option>
                            <option value="Kotlin">Kotlin</option>
                            <option value="Lua">Lua</option>
                            <option value="Matlab">Matlab</option>
                            <option value="Nix">Nix</option>
                            <option value="Objc">Objective-C</option>
                            <option value="Objcpp">Objective-C++</option>
                            <option value="Ocaml">OCaml</option>
                            <option value="Perl">Perl</option>
                            <option value="Perl6">Perl 6</option>
                            <option value="Php">PHP</option>
                            <option value="Powershell">PowerShell</option>
                            <option value="Puppet">Puppet</option>
                            <option value="Python">Python</option>
                            <option value="Purepcript">PureScript</option>
                            <option value="R">R</option>
                            <option value="Roff">Roff</option>
                            <option value="Ruby">Ruby</option>
                            <option value="Rust">Rust</option>
                            <option value="Scala">Scala</option>
                            <option value="Shell">Shell</option>
                            <option value="Smalltalk">Smalltalk</option>
                            <option value="Swift">Swift</option>
                            <option value="Typescript">TypeScript</option>
                            <option value="Vala">Vala</option>
                            <option value="Vb">Visual Basic</option>
                            <option value="Vim">Vim script</option>
                            <option value="Webassembly">WebAssembly</option>



                            <option value="otro">Otra</option>
                        </select>
                    </div>

                    <div class="form-group" id="otraTecnologiaDiv" style="display: none;">
                        <label for="otraTecnologia">Otra Tecnología</label>
                        <input type="text" class="form-control" name="otraTecnologia" id="otraTecnologia">
                    </div>

                    <div class="form-group" id="otraTecnologiaDiv" style="display: none;">
                        <label for="otraTecnologia">Otra Tecnología</label>
                        <input type="text" class="form-control" name="otraTecnologia" id="otraTecnologia">
                    </div>




                    <div class="form-group">
                        <label for="descripcion">Descripcion</label>
                        <input type="text" class="form-control" name="descripcion" required/>
                    </div><!-- comment -->



                    <div class="modal-footer">
                        <button class="btn btn-primary" type="submit">
                            Guardar
                        </button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>

<script>
    function toggleOtraTecnologia() {
        var tecnologiaSelect = document.getElementById("tecnologia");
        var otraTecnologiaDiv = document.getElementById("otraTecnologiaDiv");
        var otraTecnologiaInput = document.getElementById("otraTecnologia");

        if (tecnologiaSelect.value === "otro") {
            otraTecnologiaDiv.style.display = "block";
            otraTecnologiaInput.setAttribute("required", "required");


        } else {
            otraTecnologiaDiv.style.display = "none";
            otraTecnologiaInput.removeAttribute("required");
        }
    }
</script>