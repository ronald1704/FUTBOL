<%-- 
    Document   : listarPartido
    Created on : 16/06/2019, 10:34:22 PM
    Author     : Jose David Ballesteros
--%>

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
                ps = con.prepareStatement("SELECT equipoUno,equipoDos,lugarPartido,fechaPartido FROM partidos");
                rs = ps.executeQuery();

            %>
            <div class="nav navbar-dark bg-dark">
                <div class="container">
                    <h1 class="navbar-brand">FUTBOL</h1> 
                </div>     
            </div>
            <div class="container"><br>
                <form action="formFechaPartido.jsp" method="POST">
                    <input type="submit" class="btn btn-primary" value="Regresar"> 
                </form><br>
                <table class="table">
                    <thead class="thead-dark">
                    <th scope="col">Local</th>
                    <th scope="col">Visitante</th>
                    <th scope="col">Lugar</th>
                    <th scope="col">Fecha y hora</th>
                    </thead>
                    <tbody>
                        <%                            while (rs.next()) {
                                out.println("<tr>");
                                out.println("<td>" + rs.getString("equipoUno") + "</td>");
                                out.println("<td>" + rs.getString("equipoDos") + "</td>");
                                out.println("<td>" + rs.getString("lugarPartido") + "</td>");
                                out.println("<td>" + rs.getString("fechaPartido") + "</td>");
                                out.println("<tr>");
                            }
                        %>   
                    </tbody>
                </table>

            </div>

    </body>
</html>
