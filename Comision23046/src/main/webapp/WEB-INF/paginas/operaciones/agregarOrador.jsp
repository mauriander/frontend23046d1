<%-- 
    Document   : agregarOrador
    Created on : 13 jul 2023, 22:00:10
    Author     : MAURICIO
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="modal fade" id="agregarOradorModal" tabindex="-1" aria-labelledby="agregarOradorModal" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header bg-grey">
                <h5 class="modal-title">Agregar Orador</h5>
                <button type="button" class="btn-close text-white" data-bs-dismiss="modal" aria-label="Close"></button>
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
                        <label for="tecnologia">Tecnología</label>
                        <select class="form-control" name="tecnologia" id="tecnologia" onchange="toggleOtraTecnologia()" required>
                            <option value="">Seleccione una tecnología</option>

                            <option value="abap">ABAP</option>
                            <option value="apex">Apex</option>
                            <option value="c">C</option>
                            <option value="clojure">Clojure</option>
                            <option value="coffeescript">CoffeeScript</option>
                            <option value="cpp">C++</option>
                            <option value="crystal">Crystal</option>
                            <option value="dart">Dart</option>
                            <option value="dm">DM</option>
                            <option value="elixir">Elixir</option>
                            <option value="emacs">Emacs Lisp</option>
                            <option value="erlang">Erlang</option>
                            <option value="fsharp">F#</option>
                            <option value="fortran">Fortran</option>
                            <option value="freemarker">FreeMarker</option>
                            <option value="go">Go</option>
                            <option value="groovy">Groovy</option>
                            <option value="haskell">Haskell</option>
                            <option value="java">Java</option>
                            <option value="javascript">JavaScript</option>
                            <option value="jsonnet">Jsonnet</option>
                            <option value="julia">Julia</option>
                            <option value="kotlin">Kotlin</option>
                            <option value="lua">Lua</option>
                            <option value="matlab">Matlab</option>
                            <option value="nix">Nix</option>
                            <option value="objc">Objective-C</option>
                            <option value="objcpp">Objective-C++</option>
                            <option value="ocaml">OCaml</option>
                            <option value="perl">Perl</option>
                            <option value="perl6">Perl 6</option>
                            <option value="php">PHP</option>
                            <option value="powershell">PowerShell</option>
                            <option value="puppet">Puppet</option>
                            <option value="python">Python</option>
                            <option value="purepcript">PureScript</option>
                            <option value="r">R</option>
                            <option value="roff">Roff</option>
                            <option value="ruby">Ruby</option>
                            <option value="rust">Rust</option>
                            <option value="scala">Scala</option>
                            <option value="shell">Shell</option>
                            <option value="smalltalk">Smalltalk</option>
                            <option value="swift">Swift</option>
                            <option value="typescript">TypeScript</option>
                            <option value="vala">Vala</option>
                            <option value="vb">Visual Basic</option>
                            <option value="vim">Vim script</option>
                            <option value="webassembly">WebAssembly</option>


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