<%-- 
    Document   : registrarEstadisticas
    Created on : 16/06/2019, 08:23:12 PM
    Author     : KOGARASUMARU
--%>

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrar Estadisticas</title>
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
                Connection con;
                String url = "jdbc:mysql://localhost:3306/futbol";
                String Driver = "com.mysql.jdbc.Driver";
                String user = "root";
                String pass = "";
                Class.forName(Driver);
                con = DriverManager.getConnection(url, user, pass);
                PreparedStatement ps;
                ResultSet rs;
                ps = con.prepareStatement("SELECT idEquipo,nombre FROM equipo");
                rs = ps.executeQuery();
            %>
            
            <form action="ProcedimientoRegistrarEstadistica.jsp" method="post" style="width: 700px; margin: 0 auto;">
                <label>Codigo del equipo</label><br>
                <select class="form-control" name="codigo">
                    <option value="0">Seleccione un equipo</option>
                    <%
                        while (rs.next()) {
                            out.println("<option value='" + rs.getString("idEquipo") + "'>" + rs.getString("nombre") + "</option>");
                        }
                    %>
                    </select>
                <label>Goles a favor</label>
                <input type="text" class="form-control" name="golesFavor" placeholder="Goles a favor">
                <label>Goles en contra</label>
                <input type="text" class="form-control" name="golesContra" placeholder="Goles en contra">
                <label>Partidos jugados</label>
                <input type="text" class="form-control" name="pJugados" placeholder="Partidos jugados">
                <label>Partidos empatados</label>
                <input type="text" class="form-control" name="pEmpate" placeholder="Partidos empatados">
                <label>Partidos ganados</label>
                <input type="text" class="form-control" name="pGanados" placeholder="Partidos ganados"><br>
                <input type="submit" class="btn btn-primary" value="Registrar">
                <input type="reset" class="btn btn-danger" value="Eliminar">
            </form>

    </body>
</html>
