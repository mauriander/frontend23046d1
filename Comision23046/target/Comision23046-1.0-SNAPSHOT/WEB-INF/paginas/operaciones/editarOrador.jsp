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