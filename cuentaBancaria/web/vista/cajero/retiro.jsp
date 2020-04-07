<!DOCTYPE html>
<html>
    <head>

        <title>Retiros</title>
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
                response.sendRedirect("vista/login/login");
                request.getParameter("finalizoLog");
            }
        %>
    </head>
    <body>
        <div id="wrapper">
            <header>
                <span class="main_title">Bienvenido al men� para retiros de una cuenta</span>
            </header>
            <div id="contents">
                <section id="seccion1">

                </section>
            </div>

            <footer>
                <p>
                    Banco centroamericano a su servicio
                </p>
            </footer>
        </div>
        <nav>
            <p>
                Haga clic
                <a href="cajero.jsp">aqu�</a>
                para ir a la p�gina principal.
            </p> 
        </nav>
        <%@include file="/vista/footer.jsp" %> 
    </body>
</html>
