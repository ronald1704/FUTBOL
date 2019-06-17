<%-- 
    Document   : ProcedimientoConsultarEquipo
    Created on : 9/06/2019, 04:10:21 PM
    Author     : KOGARASUMARU
--%>

<%@page import="edu.CECAR.logica.Equipo"%>
<%@page import="edu.CECAR.logica.SentenciaPreparada"%>
<%@page import="edu.CECAR.persistencia.ConexionMySQL"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consultar Equipo</title>
    </head>
    <body>
        <div id="principal">
            <div id="principal">
                <div class="nav navbar-dark bg-dark">
                    <div class="container">
                        <h1 class="navbar-brand">Torneo intermunicipal de futbol</h1>
                    </div>     
                </div>
                <nav class="navbar navbar-expand-lg navbar-light bg-light">
                    <ul  class="nav nav-tabs">
                        <li class="nav-item active"><a class="nav-link" href="registrarEquipo.jsp">Gestionar equipo</a></li>
                        <li class="nav-item active"><a class="nav-link" href="registrarJugador.jsp">Gestionar jugador</a></li>
                        <li class="nav-item active"><a class="nav-link" href="registrarEstadistica.jsp">Gestionar Estadisticas</a></li>  
                        <li class="nav-item active"><a class="nav-link" href="ConsultarEquipo.jsp">Consultar equipo</a></li>
                        <li class="nav-item active"><a class="nav-link" href="ConsultarJugador.jsp">Consultar jugador</a></li>                    
                        <li class="nav-item active"><a class="nav-link" href="ConsultarEstadistica.jsp">Consultar estadisticas</a></li>
                        <li class="nav-item active"><a class="nav-link" href="formFechaPartido.jsp">Generar programacion</a></li>
                    </ul>
                </nav>
            </div>

            <%
                Equipo equipo = SentenciaPreparada.getProcedimientoConsultarEquipo(request.getParameter("idEquipo"));
                if (equipo != null) {
            %>
            <form style="width: 700px; margin: 0 auto;">
                <label>Codigo del equipo</label>
                <input type="text" class="form-control" name="idJugador" value="<%=equipo.getIdentificacion()%>">
                <label>Nombre del equipo</label>
                <input type="text" class="form-control" name="nombreEquipo" value="<%=equipo.getNombreEquipo()%>">
                <label>Nombre del entrenador</label>
                <input type="text" class="form-control" name="nombreEntrenador" value="<%=equipo.getNombreEntrenador()%>"><br>
            </form>
            <% } else {
                    response.sendRedirect("noEncontrado.html");
                }
            %>
    </body>
</html>
