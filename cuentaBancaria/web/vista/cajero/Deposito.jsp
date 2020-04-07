<%@page import="modelo.usuario.Usuario"%>
<%@page import="modelo.usuario.Usuario"%>
<!DOCTYPE html>
<html>
    <head>
        <%@ include file="/general.jsp" %>
        <% response.setHeader("cache-control", "no-cache, no-store, must-revalidate"); %>
        <%
            //comprueba que tenga la misma seccion
            HttpSession sesionActual;
            sesionActual = request.getSession(true);
            out.println(
                    String.format("Sesi�n actual:&nbsp;%s<br />",
                            sesionActual.getId()));

        %>

        <%            // Verifica los datos de la sesi�n para redirigir la p�gina.
            // Observe que si la sesi�n ha expirado, el servidor asigna
            // una sesi�n nueva, por lo que los datos del usuario no
            // estar�n disponibles.
            if (request.getSession(true).getAttribute("usuario") == null) {
                 request.getRequestDispatcher("/seccionCaducada").forward(request, response);
            }
        %>

        <%
            Usuario usuario = (Usuario) session.getAttribute("usuario");
            String ideUsuario = usuario.getIdUsuario();
        %>
        <title>Cuenta Cajero <%= ideUsuario%> Dep�sitos</title>
    </head>
    <body>

        <header class="header">
            <div>
                <div> <h1>Bienvenido al men� de dep�sitos</h1></div>
                <%@page import="servicios.ServicioFecha"%>
                <div><p class="headerFecha" >Fecha: <%= ServicioFecha.fechaActual()%> </p></div>
                 <!--<div><p class="headerHora" >Hora: <%= ServicioFecha.HoraActual()%> </p></div>-->
                <%@ include file="/vista/navegacion.jsp" %>
            </div>
        </header>

        <div id="wrapper">
            <div id="contents">

            </div>
            <nav>
                <p>
                    Haga clic
                    <a href="cajero.jsp">aqu�</a>
                    para ir a la p�gina principal.
                </p> 
            </nav>
        </div>
        <%@include file="/vista/footer.jsp" %> 
    </body>
</html>

