<%-- 
    Document   : todo
    Created on : 14 jul 2023, 21:49:11
    Author     : MAURICIO
--%>
<!-- comment 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <script src="https://kit.fontawesome.com/382381b436.js" crossorigin="anonymous"></script>
    <title>Editar Orador</title>

</head>
-->
<body>

    <div class="container-fluid mx-0 px-0 " id="#conferencia">

        <div id="carouselExampleCaptions" class="carousel slide">
            <div class="carousel-indicators">
                <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active"
                        aria-current="true" aria-label="Slide 1"></button>
                <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1"
                        aria-label="Slide 2"></button>
                <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2"
                        aria-label="Slide 3"></button>
            </div>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="${pageContext.request.contextPath}/img/ba1.jpg" class="d-block" alt="...">
                    <div class="carousel-caption d-block text-md-end text-sm-start justify-content-end float-end">
                        <h2>Conf Bs As</h2>
                        <p>Bs As llega por primera vez a Argentina. Un evento para compartir con nuestra comunidad
                            el conocimiento
                            y experiencia de los expertos que estás creando el futuro de Internet. Ven a conocer a
                            miembros del
                            primer evento, a otros estudiantes de Codo a Codo y los oradores de primer nivel que
                            tenemos para ti. Te
                            esperamos!</p>
                        <button type="button" class="btn btn-lg btn-outline-light m-2">Quiero ser orador</button>
                        <button type="button" class="btn btn-lg btn-success m-2">Comprar tickets</button>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="${pageContext.request.contextPath}/img/ba2.jpg" class="d-block" alt="...">
                    <div class="carousel-caption d-block text-lg-end text-sm-start justify-content-end float-end">
                        <h2>Conf Bs As - Día 2</h2>
                        <p>Bs As llega por primera vez a Argentina. Un evento para compartir con nuestra comunidad
                            el conocimiento
                            y experiencia de los expertos que estás creando el futuro de Internet. Ven a conocer a
                            miembros del
                            primer evento, a otros estudiantes de Codo a Codo y los oradores de primer nivel que
                            tenemos para ti. Te
                            esperamos!</p>
                        <button type="button" class="btn btn-lg btn-outline-light m-2">Quiero ser orador</button>
                        <button type="button" class="btn btn-lg btn-success m-2">Comprar tickets</button>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="${pageContext.request.contextPath}/img/ba3.jpg" class="d-block" alt="...">
                    <div class="carousel-caption d-block text-lg-end text-sm-start justify-content-end float-end">
                        <h2>Conf Bs As - Día 3</h2>
                        <p>Bs As llega por primera vez a Argentina. Un evento para compartir con nuestra comunidad
                            el conocimiento
                            y experiencia de los expertos que estás creando el futuro de Internet. Ven a conocer a
                            miembros del
                            primer evento, a otros estudiantes de Codo a Codo y los oradores de primer nivel que
                            tenemos para ti. Te
                            esperamos!</p>
                        <button type="button" class="btn btn-lg btn-outline-light m-2">Quiero ser orador</button>
                        <button type="button" class="btn btn-lg btn-success m-2">Comprar tickets</button>
                    </div>
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions"
                    data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions"
                    data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
    </div><!--end container-->
    <div class="container w-75 text-start my-5" id="oradores">
        <p class="text-center mt-4 mb-0">CONOCE A LOS</p>
        <p class="fs-2 text-center">ORADORES</p>
        <div class="row justify-content-center">
            <div class="col-sm col-md-4">
                <div class="card">
                   <img src="${pageContext.request.contextPath}/img/steve.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <span class="badge bg-warning text-dark">Javascript</span>
                        <span class="badge bg-info text-light">React</span>
                        <h5 class="card-title">Steve Jobs</h5>
                        <p class="card-text">Lorem ipsum dolor sit, amet consectetur adipisicing elit. Odio recusandae, sit nemo itaque fugiat, magnam aspernatur molestiae dolorum dignissimos ipsa rem. Harum illum cum ipsum dignissimos, sit possimus earum debitis.
                            content.</p>

                    </div>
                </div>
            </div>
            <div class="col-sm col-md-4">
                <div class="card">
                    <img src="${pageContext.request.contextPath}/img/bill.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <span class="badge bg-warning text-dark">Javascript</span>
                        <span class="badge bg-info text-light">React</span>
                        <h5 class="card-title">Bill Gates</h5>
                        <p class="card-text">Lorem ipsum dolor sit, amet consectetur adipisicing elit. Odio recusandae, sit nemo itaque fugiat, magnam aspernatur molestiae dolorum dignissimos ipsa rem. Harum illum cum ipsum dignissimos, sit possimus earum debitis.
                            content.</p>

                    </div>
                </div>
            </div>
            <div class="col-sm col-md-4">
                <div class="card">
                    <img src="${pageContext.request.contextPath}/img/ada.jpeg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <span class="badge bg-secondary">Negocios</span>
                        <span class="badge bg-danger">Startups</span>
                        <h5 class="card-title">Ada Lovelace</h5>
                        <p class="card-text">Lorem ipsum dolor sit, amet consectetur adipisicing elit. Odio recusandae, sit nemo itaque fugiat, magnam aspernatur molestiae dolorum dignissimos ipsa rem. Harum illum cum ipsum dignissimos, sit possimus earum debitis.
                            content.</p>

                    </div>
                </div>
            </div>
        </div>
    </div><!-- end columns-->

    <div class="card mb-3" id="#dias">
        <div class="row g-0">
            <div class="col-md-6">
                <img src="${pageContext.request.contextPath}/img/honolulu.jpg" class="img-fluid rounded-start" alt="...">

            </div>
            <div class="col-md-6 bg-dark">
                <div class="card-body text-light">
                    <h2 class="card-title">Bs As - Octubre</h2>
                    <p class="card-text">Buenos Aires es la gran capital cosmopolita de Argentina. Su centro es la
                        Plaza de
                        Mayo, rodeada de imponentes edificios
                        del siglo XIX, incluida la Casa Rosada, el icónico palacio presidencial que tiene varios
                        balcones. Entre
                        otras
                        atracciones importantes, se incluyen el Teatro Colón, un lujoso teatro de ópera de 1908 con
                        cerca de 2,500
                        asientos, y
                        el moderno museo MALBA, que exhibe arte latinoamericano. </p>
                    <p class="card-text"></p>
                    <button type="button" class="btn btn-outline-light my-3">Conocé más</button>
                </div>
            </div>
        </div>
    </div><!--end card honolulu-->
    <div class="container w-50 text-start my-5" id="form-oradores">
        <p class="text-center mt-4 mb-0">Conviértete en un</p>
        <p class="fs-2 text-center">ORADOR</p>
        <p class="text-center">Anótate como orador para dar una charla ignite. Cuéntanos de qué quieres hablar!</p>
        <form>
            <div class="row">
                <div class="col-sm-auto col-md-6 my-1">
                    <input type="text" id="name-orador" class="form-control" placeholder="Nombre" name="nombre"
                           aria-label="First name" required>
                </div>
                <div class="col-sm-auto col-md-6 my-1">
                    <input type="text" id="last-name-orador" class="form-control" placeholder="Apellido"
                           name="apellido" aria-label="Last name" required>
                </div>
            </div>
            <div class="mb-3">
                <label for="theme-orador" class="form-label"></label>
                <textarea class="form-control form-control-lg" id="theme-orador"
                          placeholder="Sobre qué quieres hablar?" rows="3" required></textarea>
                <div id="textareaHelp" class="form-text">Recuerda incluir un título para tu charla</div>
            </div>
            <button type="submit" class="btn bg-verdeclaro text-white w-100">Enviar</button>
        </form><!--end form -->
    </div>



    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
</body>
<!--
</html>-->
