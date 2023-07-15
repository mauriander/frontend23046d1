<%-- 
    Document   : header
    Created on : 13 jul 2023, 21:59:00
    Author     : MAURICIO
--%>

<header id="main-header">
    <nav class="navbar navbar-expand-lg bg-black text-white">
        <div class="container-fluid w-75">
            <a class="navbar-brand" href="${pageContext.request.contextPath}/index.jsp" >


                <img src="${pageContext.request.contextPath}/img/codoacodo.png" alt="" width="100" height="66" class="d-inline-block" onmouseover="this.style.opacity=0.5;"    onmouseout="this.style.opacity=1;">

                <span class="navbar-brand mb-0 h1 text-white">Conf Bs As</span>
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                    aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
    

            <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link active text-white" aria-current="page" href="${pageContext.request.contextPath}/index.jsp#conferencia"  onmouseover="this.style.opacity=0.5;"    onmouseout="this.style.opacity=1;">La conferencia</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active text-secondary" href="${pageContext.request.contextPath}/servletControlador"  onmouseover="this.style.opacity=0.5;"   onmouseout="this.style.opacity=1;">Los oradores</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active text-secondary" href="">El lugar y la fecha</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link  active text-secondary" href="${pageContext.request.contextPath}/index.jsp#form-oradores" onmouseover="this.style.opacity=0.5;"   onmouseout="this.style.opacity=1;">Conviértete en orador</a>
                    </li>
                    <li>
                        <a class="nav-link active text-grey" style="color: green; text-decoration-line: none" href="${pageContext.request.contextPath}/comprar.jsp" onmouseover="this.style.opacity=0.5;"   onmouseout="this.style.opacity=1;">
                            Comprar Tickets
                        </a>
                    </li>                 
                </ul>
            </div>

        </div>
    </nav>
</header>
