<%-- 
    Document   : oradores
    Created on : 13 jul 2023, 0:27:30
    Author     : MAURICIO
--%>
<%@taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
        <script src="https://kit.fontawesome.com/382381b436.js" crossorigin="anonymous"></script>
        <title>Oradores</title>
      
        <link rel="preconnect" href="https://fonts.gstatic.com" />
    
        
    </head>
    <body>
        
        <jsp:include page="WEB-INF/paginas/comunes/header.jsp"/>
                     
        <jsp:include page="WEB-INF/paginas/comunes/botonesNavegacion.jsp"/>
        
        <jsp:include page="WEB-INF/paginas/operaciones/listarOradores.jsp"/>
        
        <jsp:include page="WEB-INF/paginas/comunes/footer.jsp"/>
        
        
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
    </body>
    
</html>
