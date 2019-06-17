<%-- 
    Document   : ProcedimientoConsultarEstadistica
    Created on : 16/06/2019, 09:28:28 PM
    Author     : KOGARASUMARU
--%>

<%@page import="edu.CECAR.logica.SentenciaPreparada"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="edu.CECAR.logica.Estadistica"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consultar Estadisticas</title>
    </head>
    <body>
        <div id="principal">
            <div id="principal">
                <div class="nav navbar-dark bg-dark">
                    <div class="container">
                        <h1 class="navbar-brand">Torneo intermunicipal de futbol</h1>
                    </div>     
                </div>
                <div id="principal">
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
                    Estadistica estadistica = SentenciaPreparada.getProcedimientoConsultarEstadistica(request.getParameter("equipo"));
                %>
                <form style="width: 700px; margin: 0 auto;">
                    <label>Codigo del equipo</label>
                    <input type="text" class="form-control" name="idEquipo" value="<%=estadistica.getIdEquipo()%>">
                    <label>Goles a favor</label>
                    <input type="text" class="form-control" name="golesFavor" value="<%=estadistica.getGolesFavor()%>">
                    <label>Goles en contra</label>
                    <input type="text" class="form-control" name="golesContra" value="<%=estadistica.getGolesContra()%>"><br>
                    <label>Partidos jugados</label>
                    <input type="text" class="form-control" name="pJugados" value="<%=estadistica.getpJugados()%>"><br>
                    <label>Partidos Empatados</label>
                    <input type="text" class="form-control" name="pEmpatados" value="<%=estadistica.getpEmpatados()%>"><br>
                    <label>Partidos Ganados</label>
                    <input type="text" class="form-control" name="pGanados" value="<%=estadistica.getpGanados()%>"><br>
                </form>
                </body>
                </html>
