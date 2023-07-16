<%-- 
    Document   : editarOrador
    Created on : 13 jul 2023, 22:00:25
    Author     : MAURICIO
--%>

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

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>


    </head>
    <body style="background-image: linear-gradient( #191654, #43c6ac);background-size: cover;background-repeat: no-repeat;background-repeat: no-repeat;">


        <form action="${pageContext.request.contextPath}/servletControlador?accion=modificar&idOrador=${orador.idorador}" method="POST" class="was-validated">

            <jsp:include page="../comunes/botonesNavegacionEditar.jsp"/>

            <section id="details" style=" display: flex;         min-height: 100vh;">
                <div class="container" >
                    <div class="row">
                        <div class="col">
                            <div class="card">
                                <div class="card-header " style="background-color: lightblue">
                                    <h4>Editar Orador</h4>
                                </div>
                                <div class="card-body"style="background-image: linear-gradient(lightblue, lightcyan);">
                                    <div class="form-group">
                                        <label for="nombre">Titulo</label>
                                        <input type="text" class="form-control" name="nombre" value="${orador.nombre}" required/>
                                    </div>

                                    <div class="form-group">
                                        <label for="apellido">Apellido</label>
                                        <input type="text" class="form-control" name="apellido" value="${orador.apellido}" required/>
                                    </div>

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



    </body>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>

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

</html>


