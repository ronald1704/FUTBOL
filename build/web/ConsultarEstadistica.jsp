<%-- 
    Document   : ConsultarEstadistica
    Created on : 16/06/2019, 09:03:51 PM
    Author     : KOGARASUMARU
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
        <%
            Connection con;
            String url = "jdbc:mysql://localhost:3306/futbol";
            String Driver = "com.mysql.jdbc.Driver";
            String user = "root";
            String pass = "";
            Class.forName(Driver);
            con = DriverManager.getConnection(url, user, pass);
            PreparedStatement ps;
            PreparedStatement ps1;
            ResultSet rs;
            ResultSet rs1;
            ps = con.prepareStatement("SELECT e.idEquipo, e.nombre FROM equipo e INNER JOIN tablamarcadores tm ON e.idEquipo = tm.idEquipo");
            rs = ps.executeQuery();

        %>
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
            <form action="ProcedimientoConsultarEstadistica.jsp" method="post" style="width: 700px; margin: 0 auto;">
                <label>Identificacion del Equipo</label>
                <select class="form-control" name="equipo">
                    <option value="0">Seleccione un equipo</option>
                    <%                        
                        while (rs.next()) {
                            out.println("<option value='" + rs.getString("idEquipo") + "'>" + rs.getString("nombre") + " -" + rs.getString("idEquipo") + "</option>");
                        }
                    %>
                </select>
                <input type="submit" class="btn btn-primary" value="Consultar">
                <input type="reset" class="btn btn-danger" value="Limpiar">
            </form>
    </body>
</html>
